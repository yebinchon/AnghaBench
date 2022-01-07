
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uath_softc {int sc_flags; int sc_snd; } ;
struct mbuf {int dummy; } ;
struct ieee80211com {struct uath_softc* ic_softc; } ;


 int ENXIO ;
 int UATH_FLAG_INITDONE ;
 int UATH_LOCK (struct uath_softc*) ;
 int UATH_UNLOCK (struct uath_softc*) ;
 int mbufq_enqueue (int *,struct mbuf*) ;
 int uath_start (struct uath_softc*) ;

__attribute__((used)) static int
uath_transmit(struct ieee80211com *ic, struct mbuf *m)
{
 struct uath_softc *sc = ic->ic_softc;
 int error;

 UATH_LOCK(sc);
 if ((sc->sc_flags & UATH_FLAG_INITDONE) == 0) {
  UATH_UNLOCK(sc);
  return (ENXIO);
 }
 error = mbufq_enqueue(&sc->sc_snd, m);
 if (error) {
  UATH_UNLOCK(sc);
  return (error);
 }
 uath_start(sc);
 UATH_UNLOCK(sc);

 return (0);
}
