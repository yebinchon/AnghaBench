
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int sc_flags; int sc_snd; } ;
struct mbuf {int dummy; } ;
struct ieee80211com {struct rtwn_softc* ic_softc; } ;


 int ENXIO ;
 int RTWN_LOCK (struct rtwn_softc*) ;
 int RTWN_RUNNING ;
 int RTWN_UNLOCK (struct rtwn_softc*) ;
 int mbufq_enqueue (int *,struct mbuf*) ;
 int rtwn_start (struct rtwn_softc*) ;

int
rtwn_transmit(struct ieee80211com *ic, struct mbuf *m)
{
 struct rtwn_softc *sc = ic->ic_softc;
 int error;

 RTWN_LOCK(sc);
 if ((sc->sc_flags & RTWN_RUNNING) == 0) {
  RTWN_UNLOCK(sc);
  return (ENXIO);
 }
 error = mbufq_enqueue(&sc->sc_snd, m);
 if (error) {
  RTWN_UNLOCK(sc);
  return (error);
 }
 rtwn_start(sc);
 RTWN_UNLOCK(sc);

 return (0);
}
