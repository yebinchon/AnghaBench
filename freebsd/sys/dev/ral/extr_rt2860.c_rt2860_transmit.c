
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2860_softc {int sc_flags; int sc_snd; } ;
struct mbuf {int dummy; } ;
struct ieee80211com {struct rt2860_softc* ic_softc; } ;


 int ENXIO ;
 int RAL_LOCK (struct rt2860_softc*) ;
 int RAL_UNLOCK (struct rt2860_softc*) ;
 int RT2860_RUNNING ;
 int mbufq_enqueue (int *,struct mbuf*) ;
 int rt2860_start (struct rt2860_softc*) ;

__attribute__((used)) static int
rt2860_transmit(struct ieee80211com *ic, struct mbuf *m)
{
 struct rt2860_softc *sc = ic->ic_softc;
 int error;

 RAL_LOCK(sc);
 if ((sc->sc_flags & RT2860_RUNNING) == 0) {
  RAL_UNLOCK(sc);
  return (ENXIO);
 }
 error = mbufq_enqueue(&sc->sc_snd, m);
 if (error) {
  RAL_UNLOCK(sc);
  return (error);
 }
 rt2860_start(sc);
 RAL_UNLOCK(sc);

 return (0);
}
