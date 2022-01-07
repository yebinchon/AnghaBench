
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct ieee80211vap* if_softc; } ;
struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211com {int (* ic_vap_delete ) (struct ieee80211vap*) ;} ;


 int stub1 (struct ieee80211vap*) ;

__attribute__((used)) static void
wlan_clone_destroy(struct ifnet *ifp)
{
 struct ieee80211vap *vap = ifp->if_softc;
 struct ieee80211com *ic = vap->iv_ic;

 ic->ic_vap_delete(vap);
}
