
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct malo_softc {int malo_snd; int malo_running; } ;
struct ieee80211com {struct malo_softc* ic_softc; } ;


 int ENXIO ;
 int MALO_LOCK (struct malo_softc*) ;
 int MALO_UNLOCK (struct malo_softc*) ;
 int malo_start (struct malo_softc*) ;
 int mbufq_enqueue (int *,struct mbuf*) ;

__attribute__((used)) static int
malo_transmit(struct ieee80211com *ic, struct mbuf *m)
{
 struct malo_softc *sc = ic->ic_softc;
 int error;

 MALO_LOCK(sc);
 if (!sc->malo_running) {
  MALO_UNLOCK(sc);
  return (ENXIO);
 }
 error = mbufq_enqueue(&sc->malo_snd, m);
 if (error) {
  MALO_UNLOCK(sc);
  return (error);
 }
 malo_start(sc);
 MALO_UNLOCK(sc);
 return (0);
}
