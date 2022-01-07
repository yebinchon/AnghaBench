
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211com {int dummy; } ;


 int IEEE80211_LOCK (struct ieee80211com*) ;
 int IEEE80211_UNLOCK (struct ieee80211com*) ;
 int ieee80211_wme_initparams_locked (struct ieee80211vap*) ;

void
ieee80211_wme_initparams(struct ieee80211vap *vap)
{
 struct ieee80211com *ic = vap->iv_ic;

 IEEE80211_LOCK(ic);
 ieee80211_wme_initparams_locked(vap);
 IEEE80211_UNLOCK(ic);
}
