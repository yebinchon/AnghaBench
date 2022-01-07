
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_tx_ampdu {int txa_flags; scalar_t__ txa_attempts; } ;
struct ieee80211_node {struct ieee80211_tx_ampdu* ni_tx_ampdu; } ;


 int IEEE80211_AGGR_NAK ;
 int IEEE80211_AGGR_RUNNING ;
 int addba_stop_timeout (struct ieee80211_tx_ampdu*) ;

int
ieee80211_ampdu_tx_request_active_ext(struct ieee80211_node *ni, int tid,
    int status)
{
 struct ieee80211_tx_ampdu *tap;

 if (tid < 0 || tid > 15)
  return (0);
 tap = &ni->ni_tx_ampdu[tid];


 addba_stop_timeout(tap);
 if (status == 1) {
  tap->txa_flags |= IEEE80211_AGGR_RUNNING;
  tap->txa_attempts = 0;
 } else {

  tap->txa_flags |= IEEE80211_AGGR_NAK;
 }
 return (1);
}
