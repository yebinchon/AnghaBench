
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_ageq {int dummy; } ;


 int ieee80211_ageq_mfree (int ) ;
 int ieee80211_ageq_remove (struct ieee80211_ageq*,int *) ;

void
ieee80211_ageq_drain(struct ieee80211_ageq *aq)
{
 ieee80211_ageq_mfree(ieee80211_ageq_remove(aq, ((void*)0)));
}
