
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;
struct r12a_tx_desc {int txdw5; } ;
struct ieee80211vap {int iv_flags_ht; } ;
struct ieee80211_node {int ni_htcap; struct ieee80211vap* ni_vap; } ;


 int IEEE80211_FHT_LDPC_TX ;
 int IEEE80211_HTCAP_LDPC ;
 int R12A_TXDW5_DATA_LDPC ;
 int htole32 (int ) ;

__attribute__((used)) static void
r12a_tx_set_ldpc(struct rtwn_softc *sc, struct r12a_tx_desc *txd,
    struct ieee80211_node *ni)
{
 struct ieee80211vap *vap = ni->ni_vap;

 if ((vap->iv_flags_ht & IEEE80211_FHT_LDPC_TX) &&
     (ni->ni_htcap & IEEE80211_HTCAP_LDPC))
  txd->txdw5 |= htole32(R12A_TXDW5_DATA_LDPC);
}
