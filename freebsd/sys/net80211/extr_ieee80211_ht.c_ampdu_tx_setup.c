
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_tx_ampdu {int txa_lastsample; int txa_flags; int txa_timer; } ;


 int IEEE80211_AGGR_SETUP ;
 int callout_init (int *,int) ;
 int ticks ;

__attribute__((used)) static void
ampdu_tx_setup(struct ieee80211_tx_ampdu *tap)
{
 callout_init(&tap->txa_timer, 1);
 tap->txa_flags |= IEEE80211_AGGR_SETUP;
 tap->txa_lastsample = ticks;
}
