
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;
struct r92c_tx_desc {int txdw4; } ;
struct ieee80211_node {scalar_t__ ni_chan; } ;


 scalar_t__ IEEE80211_CHAN_ANYC ;
 scalar_t__ IEEE80211_IS_CHAN_HT40 (scalar_t__) ;
 int R92C_TXDW4_DATA_BW40 ;
 int R92C_TXDW4_DATA_SCO ;
 int SM (int ,int) ;
 int htole32 (int ) ;
 int r92c_tx_get_sco (struct rtwn_softc*,scalar_t__) ;

__attribute__((used)) static void
r92c_tx_set_ht40(struct rtwn_softc *sc, void *buf, struct ieee80211_node *ni)
{
 struct r92c_tx_desc *txd = (struct r92c_tx_desc *)buf;

 if (ni->ni_chan != IEEE80211_CHAN_ANYC &&
     IEEE80211_IS_CHAN_HT40(ni->ni_chan)) {
  int extc_offset;

  extc_offset = r92c_tx_get_sco(sc, ni->ni_chan);
  txd->txdw4 |= htole32(R92C_TXDW4_DATA_BW40);
  txd->txdw4 |= htole32(SM(R92C_TXDW4_DATA_SCO, extc_offset));
 }
}
