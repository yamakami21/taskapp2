class Task < ActiveRecord::Base
    # projectに属しているよ
  belongs_to :project
  validates :title, presence: true

  scope :unfinished, -> {where(done: false)}
end
