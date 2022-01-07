
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wi_softc {int sc_flags; int sc_snd; } ;
struct mbuf {int dummy; } ;
struct ieee80211com {struct wi_softc* ic_softc; } ;


 int ENXIO ;
 int WI_FLAGS_RUNNING ;
 int WI_LOCK (struct wi_softc*) ;
 int WI_UNLOCK (struct wi_softc*) ;
 int mbufq_enqueue (int *,struct mbuf*) ;
 int wi_start (struct wi_softc*) ;

__attribute__((used)) static int
wi_transmit(struct ieee80211com *ic, struct mbuf *m)
{
 struct wi_softc *sc = ic->ic_softc;
 int error;

 WI_LOCK(sc);
 if ((sc->sc_flags & WI_FLAGS_RUNNING) == 0) {
  WI_UNLOCK(sc);
  return (ENXIO);
 }
 error = mbufq_enqueue(&sc->sc_snd, m);
 if (error) {
  WI_UNLOCK(sc);
  return (error);
 }
 wi_start(sc);
 WI_UNLOCK(sc);
 return (0);
}
