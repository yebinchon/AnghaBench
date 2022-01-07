
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_ageq {scalar_t__ aq_len; } ;


 int IEEE80211_AGEQ_DESTROY (struct ieee80211_ageq*) ;
 int KASSERT (int,char*) ;

void
ieee80211_ageq_cleanup(struct ieee80211_ageq *aq)
{
 KASSERT(aq->aq_len == 0, ("%d frames on ageq", aq->aq_len));
 IEEE80211_AGEQ_DESTROY(aq);
}
