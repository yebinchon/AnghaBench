
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_tx_ampdu {int txa_flags; int txa_timer; } ;


 int IEEE80211_AGGR_XCHGPEND ;
 int callout_stop (int *) ;

__attribute__((used)) static void
addba_stop_timeout(struct ieee80211_tx_ampdu *tap)
{

 if (tap->txa_flags & IEEE80211_AGGR_XCHGPEND) {
  callout_stop(&tap->txa_timer);
  tap->txa_flags &= ~IEEE80211_AGGR_XCHGPEND;
 }
}
