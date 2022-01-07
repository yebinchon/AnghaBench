
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ieee80211com {struct bwn_softc* ic_softc; } ;
struct bwn_softc {int sc_flags; int sc_snd; } ;


 int BWN_FLAG_RUNNING ;
 int BWN_LOCK (struct bwn_softc*) ;
 int BWN_UNLOCK (struct bwn_softc*) ;
 int ENXIO ;
 int bwn_start (struct bwn_softc*) ;
 int mbufq_enqueue (int *,struct mbuf*) ;

__attribute__((used)) static int
bwn_transmit(struct ieee80211com *ic, struct mbuf *m)
{
 struct bwn_softc *sc = ic->ic_softc;
 int error;

 BWN_LOCK(sc);
 if ((sc->sc_flags & BWN_FLAG_RUNNING) == 0) {
  BWN_UNLOCK(sc);
  return (ENXIO);
 }
 error = mbufq_enqueue(&sc->sc_snd, m);
 if (error) {
  BWN_UNLOCK(sc);
  return (error);
 }
 bwn_start(sc);
 BWN_UNLOCK(sc);
 return (0);
}
