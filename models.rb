# encoding: utf-8
require 'bundler'
Bundler.require

DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite://#{Dir.pwd}/db/development.db")
DataMapper::Property::String.length 255


class ModelName
  include DataMapper::Resource
  property :id         , Serial
  property :foo        , Integer  , required: true, index: true
  property :bar        , String   , required: true, length: 5
  property :updated_at , Date     , required: true
  property :created_at , DateTime , required: true
end

