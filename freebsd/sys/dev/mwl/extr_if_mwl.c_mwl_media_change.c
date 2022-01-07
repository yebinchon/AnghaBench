
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct ieee80211vap* if_softc; } ;
struct ieee80211vap {int dummy; } ;


 int ENETRESET ;
 int ieee80211_media_change (struct ifnet*) ;
 int mwl_setrates (struct ieee80211vap*) ;

__attribute__((used)) static int
mwl_media_change(struct ifnet *ifp)
{
 struct ieee80211vap *vap = ifp->if_softc;
 int error;

 error = ieee80211_media_change(ifp);

 if (error == ENETRESET) {
  mwl_setrates(vap);
  error = 0;
 }
 return error;
}
