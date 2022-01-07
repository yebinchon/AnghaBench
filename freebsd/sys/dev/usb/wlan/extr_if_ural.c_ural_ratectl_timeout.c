
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ural_vap {int ratectl_task; struct ieee80211vap vap; } ;
struct ieee80211com {int dummy; } ;


 int ieee80211_runtask (struct ieee80211com*,int *) ;

__attribute__((used)) static void
ural_ratectl_timeout(void *arg)
{
 struct ural_vap *uvp = arg;
 struct ieee80211vap *vap = &uvp->vap;
 struct ieee80211com *ic = vap->iv_ic;

 ieee80211_runtask(ic, &uvp->ratectl_task);
}
