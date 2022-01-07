
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;
struct r12a_tx_desc {int txdw5; } ;
struct ieee80211vap {int iv_flags_ht; } ;
struct ieee80211_node {int ni_htcap; scalar_t__ ni_chan; struct ieee80211vap* ni_vap; } ;


 scalar_t__ IEEE80211_CHAN_ANYC ;
 int IEEE80211_FHT_SHORTGI20 ;
 int IEEE80211_FHT_SHORTGI40 ;
 int IEEE80211_HTCAP_SHORTGI20 ;
 int IEEE80211_HTCAP_SHORTGI40 ;
 scalar_t__ IEEE80211_IS_CHAN_HT40 (scalar_t__) ;
 int R12A_TXDW5_DATA_SHORT ;
 int htole32 (int ) ;

__attribute__((used)) static void
r12a_tx_set_sgi(struct rtwn_softc *sc, void *buf, struct ieee80211_node *ni)
{
 struct r12a_tx_desc *txd = (struct r12a_tx_desc *)buf;
 struct ieee80211vap *vap = ni->ni_vap;

 if ((vap->iv_flags_ht & IEEE80211_FHT_SHORTGI20) &&
     (ni->ni_htcap & IEEE80211_HTCAP_SHORTGI20))
  txd->txdw5 |= htole32(R12A_TXDW5_DATA_SHORT);
 else if (ni->ni_chan != IEEE80211_CHAN_ANYC &&
     IEEE80211_IS_CHAN_HT40(ni->ni_chan) &&
     (ni->ni_htcap & IEEE80211_HTCAP_SHORTGI40) &&
     (vap->iv_flags_ht & IEEE80211_FHT_SHORTGI40))
  txd->txdw5 |= htole32(R12A_TXDW5_DATA_SHORT);
}
