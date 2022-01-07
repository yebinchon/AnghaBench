
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct run_softc {int sc_flags; int sc_snd; } ;
struct mbuf {int dummy; } ;
struct ieee80211com {struct run_softc* ic_softc; } ;


 int ENXIO ;
 int RUN_LOCK (struct run_softc*) ;
 int RUN_RUNNING ;
 int RUN_UNLOCK (struct run_softc*) ;
 int mbufq_enqueue (int *,struct mbuf*) ;
 int run_start (struct run_softc*) ;

__attribute__((used)) static int
run_transmit(struct ieee80211com *ic, struct mbuf *m)
{
 struct run_softc *sc = ic->ic_softc;
 int error;

 RUN_LOCK(sc);
 if ((sc->sc_flags & RUN_RUNNING) == 0) {
  RUN_UNLOCK(sc);
  return (ENXIO);
 }
 error = mbufq_enqueue(&sc->sc_snd, m);
 if (error) {
  RUN_UNLOCK(sc);
  return (error);
 }
 run_start(sc);
 RUN_UNLOCK(sc);

 return (0);
}
