
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int iv_flags_ht; struct ieee80211com* iv_ic; } ;
struct ieee80211com {int dummy; } ;


 int IEEE80211_LOCK (struct ieee80211com*) ;
 int IEEE80211_UNLOCK (struct ieee80211com*) ;
 int ieee80211_syncflag_ht_locked (struct ieee80211com*,int) ;

void
ieee80211_syncflag_ht(struct ieee80211vap *vap, int flag)
{
 struct ieee80211com *ic = vap->iv_ic;

 IEEE80211_LOCK(ic);
 if (flag < 0) {
  flag = -flag;
  vap->iv_flags_ht &= ~flag;
 } else
  vap->iv_flags_ht |= flag;
 ieee80211_syncflag_ht_locked(ic, flag);
 IEEE80211_UNLOCK(ic);
}
