
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_tx_ampdu {int txa_flags; } ;
struct ath_softc {int dummy; } ;
struct ath_node {int dummy; } ;


 int IEEE80211_AGGR_XCHGPEND ;
 int IEEE80211_NONQOS_TID ;
 struct ieee80211_tx_ampdu* ath_tx_get_tx_tid (struct ath_node*,int) ;

__attribute__((used)) static int
ath_tx_ampdu_pending(struct ath_softc *sc, struct ath_node *an, int tid)
{
 struct ieee80211_tx_ampdu *tap;

 if (tid == IEEE80211_NONQOS_TID)
  return 0;

 tap = ath_tx_get_tx_tid(an, tid);
 if (tap == ((void*)0))
  return 0;

 return !! (tap->txa_flags & IEEE80211_AGGR_XCHGPEND);
}
