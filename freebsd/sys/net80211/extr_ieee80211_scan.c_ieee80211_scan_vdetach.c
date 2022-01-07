
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211com {TYPE_2__* ic_scan_methods; struct ieee80211_scan_state* ic_scan; } ;
struct ieee80211_scan_state {struct ieee80211vap* ss_vap; TYPE_1__* ss_ops; } ;
struct TYPE_4__ {int (* sc_vdetach ) (struct ieee80211vap*) ;} ;
struct TYPE_3__ {int (* scan_detach ) (struct ieee80211_scan_state*) ;} ;


 int IEEE80211_LOCK (struct ieee80211com*) ;
 int IEEE80211_UNLOCK (struct ieee80211com*) ;
 int stub1 (struct ieee80211vap*) ;
 int stub2 (struct ieee80211_scan_state*) ;

void
ieee80211_scan_vdetach(struct ieee80211vap *vap)
{
 struct ieee80211com *ic = vap->iv_ic;
 struct ieee80211_scan_state *ss;

 IEEE80211_LOCK(ic);
 ss = ic->ic_scan;

 ic->ic_scan_methods->sc_vdetach(vap);

 if (ss != ((void*)0) && ss->ss_vap == vap) {
  if (ss->ss_ops != ((void*)0)) {
   ss->ss_ops->scan_detach(ss);
   ss->ss_ops = ((void*)0);
  }
  ss->ss_vap = ((void*)0);
 }
 IEEE80211_UNLOCK(ic);
}
