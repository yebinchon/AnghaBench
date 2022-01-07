
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_flags_ext; scalar_t__ ic_nonerpsta; scalar_t__ ic_lastnonerp; } ;


 int IEEE80211_FEXT_NONERP_PR ;
 int IEEE80211_LOCK_ASSERT (struct ieee80211com*) ;
 int IEEE80211_MSG_ASSOC ;
 scalar_t__ IEEE80211_NONERP_PRESENT_AGE ;
 int IEEE80211_NOTE (int ,int ,int ,char*,char*) ;
 int disable_protection (struct ieee80211com*) ;
 scalar_t__ ieee80211_time_after (int ,scalar_t__) ;
 int ni ;
 int ticks ;
 int vap ;

__attribute__((used)) static void
ieee80211_erp_timeout(struct ieee80211com *ic)
{

 IEEE80211_LOCK_ASSERT(ic);

 if ((ic->ic_flags_ext & IEEE80211_FEXT_NONERP_PR) &&
     ieee80211_time_after(ticks, ic->ic_lastnonerp + IEEE80211_NONERP_PRESENT_AGE)) {




  ic->ic_flags_ext &= ~IEEE80211_FEXT_NONERP_PR;
  if (ic->ic_nonerpsta == 0)
   disable_protection(ic);
 }
}
