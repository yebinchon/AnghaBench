
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwn_softc {int sc_rftoggle_task; int sc_tq; } ;
struct ieee80211vap {int dummy; } ;
struct ieee80211com {scalar_t__ ic_nrunning; int ic_vaps; struct iwn_softc* ic_softc; } ;


 struct ieee80211vap* TAILQ_FIRST (int *) ;
 int ieee80211_start_all (struct ieee80211com*) ;
 int ieee80211_stop (struct ieee80211vap*) ;
 int iwn_init (struct iwn_softc*) ;
 int iwn_stop (struct iwn_softc*) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
iwn_parent(struct ieee80211com *ic)
{
 struct iwn_softc *sc = ic->ic_softc;
 struct ieee80211vap *vap;
 int error;

 if (ic->ic_nrunning > 0) {
  error = iwn_init(sc);

  switch (error) {
  case 0:
   ieee80211_start_all(ic);
   break;
  case 1:

   taskqueue_enqueue(sc->sc_tq, &sc->sc_rftoggle_task);
   break;
  default:
   vap = TAILQ_FIRST(&ic->ic_vaps);
   if (vap != ((void*)0))
    ieee80211_stop(vap);
   break;
  }
 } else
  iwn_stop(sc);
}
