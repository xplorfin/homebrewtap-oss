# This file was generated by GoReleaser. DO NOT EDIT.
class Ganalytics < Formula
  desc "Prometheus Google Analytics Exporter"
  homepage "https://github.com/xplorfin/googleanalytics_exporter"
  version "0.1.0-goreleaser0001"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/xplorfin/googleanalytics_exporter/releases/download/0.1.0-goreleaser0001/ganalytics_Darwin_x86_64.tar.gz"
    sha256 "4511c664c4f4f8619eca01a8b7ec7b8a3a918a29004acbd6f1f145663118aeef"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/xplorfin/googleanalytics_exporter/releases/download/0.1.0-goreleaser0001/ganalytics_Linux_x86_64.tar.gz"
      sha256 "14033a258ac0ca220713bb953e39e2789c302d5658a4945e4982cb96449f7c96"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/xplorfin/googleanalytics_exporter/releases/download/0.1.0-goreleaser0001/ganalytics_Linux_arm64.tar.gz"
        sha256 "e8ff9aa0e0b9a0007e348a30c0f35261a8df190bdf3e7df128dc797feb3d2ed4"
      else
        url "https://github.com/xplorfin/googleanalytics_exporter/releases/download/0.1.0-goreleaser0001/ganalytics_Linux_armv6.tar.gz"
        sha256 "b849fc64ca9f22bba42deebc16988932c923235c4894252b266872bd5ec38a3c"
      end
    end
  end

  def install
    bin.install "ganalytics"
  end

  test do
    system "#{bin}/ganalytics -v"
  end
end
