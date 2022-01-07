
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_tx_ampdu {int txa_flags; } ;
struct ieee80211_node {struct ieee80211_tx_ampdu* ni_tx_ampdu; } ;


 int IEEE80211_AGGR_NAK ;
 int IEEE80211_AGGR_SETUP ;
 int addba_start_timeout (struct ieee80211_tx_ampdu*) ;
 int ampdu_tx_setup (struct ieee80211_tx_ampdu*) ;

int
ieee80211_ampdu_tx_request_ext(struct ieee80211_node *ni, int tid)
{
 struct ieee80211_tx_ampdu *tap;

 if (tid < 0 || tid > 15)
  return (0);
 tap = &ni->ni_tx_ampdu[tid];


 if ((tap->txa_flags & IEEE80211_AGGR_SETUP) == 0) {

  ampdu_tx_setup(tap);
 }

 tap->txa_flags &= ~IEEE80211_AGGR_NAK;
 addba_start_timeout(tap);
 return (1);
}
