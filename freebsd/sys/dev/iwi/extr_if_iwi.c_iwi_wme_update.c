
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwi_softc {int dummy; } ;
struct ieee80211vap {scalar_t__ iv_state; } ;
struct ieee80211com {int ic_vaps; struct iwi_softc* ic_softc; } ;


 scalar_t__ IEEE80211_S_RUN ;
 int IWI_LOCK (struct iwi_softc*) ;
 int IWI_LOCK_DECL ;
 int IWI_UNLOCK (struct iwi_softc*) ;
 struct ieee80211vap* TAILQ_FIRST (int *) ;
 int iwi_wme_setparams (struct iwi_softc*) ;

__attribute__((used)) static int
iwi_wme_update(struct ieee80211com *ic)
{
 struct iwi_softc *sc = ic->ic_softc;
 struct ieee80211vap *vap = TAILQ_FIRST(&ic->ic_vaps);
 IWI_LOCK_DECL;
 if (vap->iv_state == IEEE80211_S_RUN) {
  IWI_LOCK(sc);
  iwi_wme_setparams(sc);
  IWI_UNLOCK(sc);
 }
 return (0);
}
