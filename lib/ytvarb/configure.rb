#! /opt/local/bin/ruby
# coding: utf-8

module Ytvarb
	module Configure
		CONFIG = [
			:environment, 
			:auth_key, 
			:time_zone, 
			:year, 
			:month, 
			:day, 
			:video_id
		].freeze

		attr_accessor(*CONFIG)

		def self.extended(base)
			base.reset
		end

		def configure
			yield self
		end

		def reset
			self.environment = ''
			self.auth_key    = ''
			self.time_zone   = 'Tokyo'
			self.year        = ''
			self.month       = ''
			self.day         = ''
			self.video_id    = ''
			self
		end
	end
end
