
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ural_softc {scalar_t__ sc_running; scalar_t__ sc_detached; } ;
struct ieee80211com {scalar_t__ ic_nrunning; struct ural_softc* ic_softc; } ;


 int RAL_LOCK (struct ural_softc*) ;
 int RAL_UNLOCK (struct ural_softc*) ;
 int ieee80211_start_all (struct ieee80211com*) ;
 int ural_init (struct ural_softc*) ;
 int ural_setpromisc (struct ural_softc*) ;
 int ural_stop (struct ural_softc*) ;

__attribute__((used)) static void
ural_parent(struct ieee80211com *ic)
{
 struct ural_softc *sc = ic->ic_softc;
 int startall = 0;

 RAL_LOCK(sc);
 if (sc->sc_detached) {
  RAL_UNLOCK(sc);
  return;
 }
 if (ic->ic_nrunning > 0) {
  if (sc->sc_running == 0) {
   ural_init(sc);
   startall = 1;
  } else
   ural_setpromisc(sc);
 } else if (sc->sc_running)
  ural_stop(sc);
 RAL_UNLOCK(sc);
 if (startall)
  ieee80211_start_all(ic);
}
