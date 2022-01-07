
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_tx_ampdu {scalar_t__ txa_nextrequest; int txa_flags; int txa_timer; } ;


 int IEEE80211_AGGR_XCHGPEND ;
 int addba_timeout ;
 int callout_reset (int *,scalar_t__,int ,struct ieee80211_tx_ampdu*) ;
 scalar_t__ ieee80211_addba_timeout ;
 scalar_t__ ticks ;

__attribute__((used)) static void
addba_start_timeout(struct ieee80211_tx_ampdu *tap)
{

 callout_reset(&tap->txa_timer, ieee80211_addba_timeout,
     addba_timeout, tap);
 tap->txa_flags |= IEEE80211_AGGR_XCHGPEND;
 tap->txa_nextrequest = ticks + ieee80211_addba_timeout;
}
