
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;
struct r12a_tx_desc {int txdw5; } ;
struct ieee80211_node {scalar_t__ ni_chan; } ;


 scalar_t__ IEEE80211_CHAN_ANYC ;
 scalar_t__ IEEE80211_IS_CHAN_HT40 (scalar_t__) ;
 int R12A_TXDW5_DATA_BW ;
 int R12A_TXDW5_DATA_BW40 ;
 int R12A_TXDW5_DATA_PRIM_CHAN ;
 int SM (int ,int) ;
 int htole32 (int ) ;
 int r12a_get_primary_channel (struct rtwn_softc*,scalar_t__) ;

__attribute__((used)) static void
r12a_tx_set_ht40(struct rtwn_softc *sc, void *buf, struct ieee80211_node *ni)
{
 struct r12a_tx_desc *txd = (struct r12a_tx_desc *)buf;


 if (ni->ni_chan != IEEE80211_CHAN_ANYC &&
     IEEE80211_IS_CHAN_HT40(ni->ni_chan)) {
  int prim_chan;

  prim_chan = r12a_get_primary_channel(sc, ni->ni_chan);
  txd->txdw5 |= htole32(SM(R12A_TXDW5_DATA_BW,
      R12A_TXDW5_DATA_BW40));
  txd->txdw5 |= htole32(SM(R12A_TXDW5_DATA_PRIM_CHAN,
      prim_chan));
 }
}
