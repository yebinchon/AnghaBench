
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rum_softc {int sc_snd; int sc_running; } ;
struct mbuf {int dummy; } ;
struct ieee80211com {struct rum_softc* ic_softc; } ;


 int ENXIO ;
 int RUM_LOCK (struct rum_softc*) ;
 int RUM_UNLOCK (struct rum_softc*) ;
 int mbufq_enqueue (int *,struct mbuf*) ;
 int rum_start (struct rum_softc*) ;

__attribute__((used)) static int
rum_transmit(struct ieee80211com *ic, struct mbuf *m)
{
 struct rum_softc *sc = ic->ic_softc;
 int error;

 RUM_LOCK(sc);
 if (!sc->sc_running) {
  RUM_UNLOCK(sc);
  return (ENXIO);
 }
 error = mbufq_enqueue(&sc->sc_snd, m);
 if (error) {
  RUM_UNLOCK(sc);
  return (error);
 }
 rum_start(sc);
 RUM_UNLOCK(sc);

 return (0);
}
