
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ieee80211com {struct bwi_softc* ic_softc; } ;
struct bwi_softc {int sc_flags; int sc_snd; } ;


 int BWI_F_RUNNING ;
 int BWI_LOCK (struct bwi_softc*) ;
 int BWI_UNLOCK (struct bwi_softc*) ;
 int ENXIO ;
 int bwi_start_locked (struct bwi_softc*) ;
 int mbufq_enqueue (int *,struct mbuf*) ;

__attribute__((used)) static int
bwi_transmit(struct ieee80211com *ic, struct mbuf *m)
{
 struct bwi_softc *sc = ic->ic_softc;
 int error;

 BWI_LOCK(sc);
 if ((sc->sc_flags & BWI_F_RUNNING) == 0) {
  BWI_UNLOCK(sc);
  return (ENXIO);
 }
 error = mbufq_enqueue(&sc->sc_snd, m);
 if (error) {
  BWI_UNLOCK(sc);
  return (error);
 }
 bwi_start_locked(sc);
 BWI_UNLOCK(sc);
 return (0);
}
