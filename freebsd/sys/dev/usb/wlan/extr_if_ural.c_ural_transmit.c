
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ural_softc {int sc_snd; int sc_running; } ;
struct mbuf {int dummy; } ;
struct ieee80211com {struct ural_softc* ic_softc; } ;


 int ENXIO ;
 int RAL_LOCK (struct ural_softc*) ;
 int RAL_UNLOCK (struct ural_softc*) ;
 int mbufq_enqueue (int *,struct mbuf*) ;
 int ural_start (struct ural_softc*) ;

__attribute__((used)) static int
ural_transmit(struct ieee80211com *ic, struct mbuf *m)
{
 struct ural_softc *sc = ic->ic_softc;
 int error;

 RAL_LOCK(sc);
 if (!sc->sc_running) {
  RAL_UNLOCK(sc);
  return (ENXIO);
 }
 error = mbufq_enqueue(&sc->sc_snd, m);
 if (error) {
  RAL_UNLOCK(sc);
  return (error);
 }
 ural_start(sc);
 RAL_UNLOCK(sc);

 return (0);
}
