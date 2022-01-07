
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int dummy; } ;
struct ifnet {struct ieee80211vap* if_softc; } ;
struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211com {scalar_t__ ic_nrunning; struct iwm_softc* ic_softc; } ;


 int ENETRESET ;
 int IWM_LOCK (struct iwm_softc*) ;
 int IWM_UNLOCK (struct iwm_softc*) ;
 int ieee80211_media_change (struct ifnet*) ;
 int iwm_init (struct iwm_softc*) ;
 int iwm_stop (struct iwm_softc*) ;

__attribute__((used)) static int
iwm_media_change(struct ifnet *ifp)
{
 struct ieee80211vap *vap = ifp->if_softc;
 struct ieee80211com *ic = vap->iv_ic;
 struct iwm_softc *sc = ic->ic_softc;
 int error;

 error = ieee80211_media_change(ifp);
 if (error != ENETRESET)
  return error;

 IWM_LOCK(sc);
 if (ic->ic_nrunning > 0) {
  iwm_stop(sc);
  iwm_init(sc);
 }
 IWM_UNLOCK(sc);
 return error;
}
