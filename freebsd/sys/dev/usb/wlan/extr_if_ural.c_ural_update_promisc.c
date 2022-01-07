
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ural_softc {scalar_t__ sc_running; } ;
struct ieee80211com {struct ural_softc* ic_softc; } ;


 int RAL_LOCK (struct ural_softc*) ;
 int RAL_UNLOCK (struct ural_softc*) ;
 int ural_setpromisc (struct ural_softc*) ;

__attribute__((used)) static void
ural_update_promisc(struct ieee80211com *ic)
{
 struct ural_softc *sc = ic->ic_softc;

 RAL_LOCK(sc);
 if (sc->sc_running)
  ural_setpromisc(sc);
 RAL_UNLOCK(sc);
}
