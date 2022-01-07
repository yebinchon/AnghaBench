
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upgt_softc {int sc_flags; int sc_snd; } ;
struct mbuf {int dummy; } ;
struct ieee80211com {struct upgt_softc* ic_softc; } ;


 int ENXIO ;
 int UPGT_FLAG_INITDONE ;
 int UPGT_LOCK (struct upgt_softc*) ;
 int UPGT_UNLOCK (struct upgt_softc*) ;
 int mbufq_enqueue (int *,struct mbuf*) ;
 int upgt_start (struct upgt_softc*) ;

__attribute__((used)) static int
upgt_transmit(struct ieee80211com *ic, struct mbuf *m)
{
 struct upgt_softc *sc = ic->ic_softc;
 int error;

 UPGT_LOCK(sc);
 if ((sc->sc_flags & UPGT_FLAG_INITDONE) == 0) {
  UPGT_UNLOCK(sc);
  return (ENXIO);
 }
 error = mbufq_enqueue(&sc->sc_snd, m);
 if (error) {
  UPGT_UNLOCK(sc);
  return (error);
 }
 upgt_start(sc);
 UPGT_UNLOCK(sc);

 return (0);
}
