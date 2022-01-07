
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_flags_ht; scalar_t__ ic_lastnonht; } ;


 int IEEE80211_FHT_NONHT_PR ;
 int IEEE80211_LOCK_ASSERT (struct ieee80211com*) ;
 int IEEE80211_MSG_11N ;
 scalar_t__ IEEE80211_NONHT_PRESENT_AGE ;
 int IEEE80211_NOTE (int ,int ,int ,char*,char*) ;
 int htinfo_update (struct ieee80211com*) ;
 scalar_t__ ieee80211_time_after (int ,scalar_t__) ;
 int ni ;
 int ticks ;
 int vap ;

void
ieee80211_ht_timeout(struct ieee80211com *ic)
{
 IEEE80211_LOCK_ASSERT(ic);

 if ((ic->ic_flags_ht & IEEE80211_FHT_NONHT_PR) &&
     ieee80211_time_after(ticks, ic->ic_lastnonht + IEEE80211_NONHT_PRESENT_AGE)) {




  ic->ic_flags_ht &= ~IEEE80211_FHT_NONHT_PR;
  htinfo_update(ic);
 }
}
