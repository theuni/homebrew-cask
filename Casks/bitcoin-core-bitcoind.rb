cask 'bitcoin-core-bitcoind' do
  version '0.14.0'
  sha256 'e01e3cdd3c4138eccaf0c1267caa3bcdb6949ee63c1e396842b70f102fb4bcaf'

  # bitcoin.org was verified as official when first introduced to the cask
  url "https://bitcoin.org/bin/bitcoin-core-#{version}/bitcoin-#{version}-osx64.tar.gz"
  name 'Bitcoin Core Daemon'
  name 'bitcoind'
  homepage 'https://bitcoincore.org/'

  conflicts_with cask: 'bitcoin-xt'
  depends_on macos: '>= :mountain_lion'

  binary "bitcoin-#{version}/bin/bitcoind"
  binary "bitcoin-#{version}/bin/bitcoin-cli"
end
