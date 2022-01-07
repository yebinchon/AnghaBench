
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl_softc {int sc_snd; int sc_running; } ;
struct mbuf {int dummy; } ;
struct ieee80211com {struct mwl_softc* ic_softc; } ;


 int ENXIO ;
 int MWL_LOCK (struct mwl_softc*) ;
 int MWL_UNLOCK (struct mwl_softc*) ;
 int mbufq_enqueue (int *,struct mbuf*) ;
 int mwl_start (struct mwl_softc*) ;

__attribute__((used)) static int
mwl_transmit(struct ieee80211com *ic, struct mbuf *m)
{
 struct mwl_softc *sc = ic->ic_softc;
 int error;

 MWL_LOCK(sc);
 if (!sc->sc_running) {
  MWL_UNLOCK(sc);
  return (ENXIO);
 }
 error = mbufq_enqueue(&sc->sc_snd, m);
 if (error) {
  MWL_UNLOCK(sc);
  return (error);
 }
 mwl_start(sc);
 MWL_UNLOCK(sc);
 return (0);
}
