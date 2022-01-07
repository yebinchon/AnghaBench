
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_node {int dummy; } ;
struct ieee80211_ageq {int dummy; } ;


 int ieee80211_ageq_mfree (int ) ;
 int ieee80211_ageq_remove (struct ieee80211_ageq*,struct ieee80211_node*) ;

void
ieee80211_ageq_drain_node(struct ieee80211_ageq *aq,
 struct ieee80211_node *ni)
{
 ieee80211_ageq_mfree(ieee80211_ageq_remove(aq, ni));
}
