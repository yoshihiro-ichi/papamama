require 'rails_helper'
RSpec.describe Comment, type: :model do
  describe 'commentモデル機能' do
    context 'バリデーションのテスト' do
      it 'コメントが未入力の場合' do
        user2 = create(:user2)
        facility= create(:facility)
        #userとアソシエーションしているため:factoryにuserも含んでいる
        comment = Comment.new(content: nil, user_id: user2.id, facility_id: facility.id)
        expect(comment).to be_invalid
      end
    end
  end
end
