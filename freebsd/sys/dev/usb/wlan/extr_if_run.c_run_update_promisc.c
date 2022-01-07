
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct run_softc {int sc_flags; } ;
struct ieee80211com {struct run_softc* ic_softc; } ;


 int RUN_LOCK (struct run_softc*) ;
 int RUN_RUNNING ;
 int RUN_UNLOCK (struct run_softc*) ;
 int run_update_promisc_locked (struct run_softc*) ;

__attribute__((used)) static void
run_update_promisc(struct ieee80211com *ic)
{
 struct run_softc *sc = ic->ic_softc;

 if ((sc->sc_flags & RUN_RUNNING) == 0)
  return;

 RUN_LOCK(sc);
 run_update_promisc_locked(sc);
 RUN_UNLOCK(sc);
}
