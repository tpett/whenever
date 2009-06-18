module Whenever
  module Job
    class Runner < Whenever::Job::Default
      
      def initialize(options = {})
        super(options)
        @file = !!options[:file]
      end
      
      def output
        path_required
        %Q(#{File.join(@path, 'script', 'runner')} -e #{@environment} #{@file ? task : %Q("#{task}") })
      end
      
    end
  end
end
