
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_flags; int ic_bmiss_task; } ;


 int IEEE80211_F_SCAN ;
 int IEEE80211_LOCK (struct ieee80211com*) ;
 int IEEE80211_UNLOCK (struct ieee80211com*) ;
 int ieee80211_runtask (struct ieee80211com*,int *) ;

void
ieee80211_beacon_miss(struct ieee80211com *ic)
{
 IEEE80211_LOCK(ic);
 if ((ic->ic_flags & IEEE80211_F_SCAN) == 0) {

  ieee80211_runtask(ic, &ic->ic_bmiss_task);
 }
 IEEE80211_UNLOCK(ic);
}
