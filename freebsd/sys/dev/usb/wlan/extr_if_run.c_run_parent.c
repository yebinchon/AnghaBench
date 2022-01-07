
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct run_softc {int sc_flags; int rvp_cnt; scalar_t__ sc_detached; } ;
struct ieee80211com {scalar_t__ ic_nrunning; struct run_softc* ic_softc; } ;


 int RUN_LOCK (struct run_softc*) ;
 int RUN_RUNNING ;
 int RUN_UNLOCK (struct run_softc*) ;
 int ieee80211_start_all (struct ieee80211com*) ;
 int run_init_locked (struct run_softc*) ;
 int run_stop (struct run_softc*) ;
 int run_update_promisc_locked (struct run_softc*) ;

__attribute__((used)) static void
run_parent(struct ieee80211com *ic)
{
 struct run_softc *sc = ic->ic_softc;
 int startall = 0;

 RUN_LOCK(sc);
 if (sc->sc_detached) {
  RUN_UNLOCK(sc);
  return;
 }

 if (ic->ic_nrunning > 0) {
  if (!(sc->sc_flags & RUN_RUNNING)) {
   startall = 1;
   run_init_locked(sc);
  } else
   run_update_promisc_locked(sc);
 } else if ((sc->sc_flags & RUN_RUNNING) && sc->rvp_cnt <= 1)
  run_stop(sc);
 RUN_UNLOCK(sc);
 if (startall)
  ieee80211_start_all(ic);
}
