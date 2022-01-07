
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urtw_softc {int sc_flags; int sc_snd; } ;
struct mbuf {int dummy; } ;
struct ieee80211com {struct urtw_softc* ic_softc; } ;


 int ENXIO ;
 int URTW_LOCK (struct urtw_softc*) ;
 int URTW_RUNNING ;
 int URTW_UNLOCK (struct urtw_softc*) ;
 int mbufq_enqueue (int *,struct mbuf*) ;
 int urtw_start (struct urtw_softc*) ;

__attribute__((used)) static int
urtw_transmit(struct ieee80211com *ic, struct mbuf *m)
{
 struct urtw_softc *sc = ic->ic_softc;
 int error;

 URTW_LOCK(sc);
 if ((sc->sc_flags & URTW_RUNNING) == 0) {
  URTW_UNLOCK(sc);
  return (ENXIO);
 }
 error = mbufq_enqueue(&sc->sc_snd, m);
 if (error) {
  URTW_UNLOCK(sc);
  return (error);
 }
 urtw_start(sc);
 URTW_UNLOCK(sc);

 return (0);
}
