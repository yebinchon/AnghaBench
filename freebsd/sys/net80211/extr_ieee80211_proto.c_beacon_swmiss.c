
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {scalar_t__ iv_state; int (* iv_bmiss ) (struct ieee80211vap*) ;struct ieee80211com* iv_ic; } ;
struct ieee80211com {int dummy; } ;


 int IEEE80211_LOCK (struct ieee80211com*) ;
 scalar_t__ IEEE80211_S_RUN ;
 int IEEE80211_UNLOCK (struct ieee80211com*) ;
 int stub1 (struct ieee80211vap*) ;

__attribute__((used)) static void
beacon_swmiss(void *arg, int npending)
{
 struct ieee80211vap *vap = arg;
 struct ieee80211com *ic = vap->iv_ic;

 IEEE80211_LOCK(ic);
 if (vap->iv_state >= IEEE80211_S_RUN) {

  vap->iv_bmiss(vap);
 }
 IEEE80211_UNLOCK(ic);
}
