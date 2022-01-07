
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;


 int IEEE80211_LOCK_ASSERT (struct ieee80211com*) ;
 int csa_completeswitch (struct ieee80211com*) ;

void
ieee80211_csa_cancelswitch(struct ieee80211com *ic)
{
 IEEE80211_LOCK_ASSERT(ic);

 csa_completeswitch(ic);
}
