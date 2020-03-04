# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true, inclusion: 0..5, numericality: { only_integer: true }
  # validates :category, inclusion
end
