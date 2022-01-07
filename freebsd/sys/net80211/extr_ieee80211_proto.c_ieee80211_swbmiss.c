
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {scalar_t__ iv_state; scalar_t__ iv_swbmiss_count; int iv_swbmiss_period; int iv_swbmiss; int iv_swbmiss_task; int * iv_bmiss; struct ieee80211com* iv_ic; } ;
struct ieee80211com {int ic_flags; } ;


 int IEEE80211_F_SCAN ;
 int IEEE80211_LOCK_ASSERT (struct ieee80211com*) ;
 scalar_t__ IEEE80211_S_RUN ;
 int KASSERT (int,char*) ;
 int callout_reset (int *,int ,void (*) (void*),struct ieee80211vap*) ;
 int ieee80211_runtask (struct ieee80211com*,int *) ;

void
ieee80211_swbmiss(void *arg)
{
 struct ieee80211vap *vap = arg;
 struct ieee80211com *ic = vap->iv_ic;

 IEEE80211_LOCK_ASSERT(ic);

 KASSERT(vap->iv_state >= IEEE80211_S_RUN,
     ("wrong state %d", vap->iv_state));

 if (ic->ic_flags & IEEE80211_F_SCAN) {
  vap->iv_swbmiss_count = 0;
 } else if (vap->iv_swbmiss_count == 0) {
  if (vap->iv_bmiss != ((void*)0))
   ieee80211_runtask(ic, &vap->iv_swbmiss_task);
 } else
  vap->iv_swbmiss_count = 0;
 callout_reset(&vap->iv_swbmiss, vap->iv_swbmiss_period,
  ieee80211_swbmiss, vap);
}
