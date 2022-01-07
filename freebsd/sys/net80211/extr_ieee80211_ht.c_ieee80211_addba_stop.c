
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_tx_ampdu {int txa_flags; scalar_t__ txa_attempts; } ;
struct ieee80211_node {int dummy; } ;


 int IEEE80211_AGGR_RUNNING ;
 int addba_stop_timeout (struct ieee80211_tx_ampdu*) ;

__attribute__((used)) static void
ieee80211_addba_stop(struct ieee80211_node *ni, struct ieee80211_tx_ampdu *tap)
{

 addba_stop_timeout(tap);
 if (tap->txa_flags & IEEE80211_AGGR_RUNNING) {

  tap->txa_flags &= ~IEEE80211_AGGR_RUNNING;
 }
 tap->txa_attempts = 0;
}
