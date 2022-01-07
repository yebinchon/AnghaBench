
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zyd_softc {int sc_flags; int sc_snd; } ;
struct mbuf {int dummy; } ;
struct ieee80211com {struct zyd_softc* ic_softc; } ;


 int ENXIO ;
 int ZYD_FLAG_RUNNING ;
 int ZYD_LOCK (struct zyd_softc*) ;
 int ZYD_UNLOCK (struct zyd_softc*) ;
 int mbufq_enqueue (int *,struct mbuf*) ;
 int zyd_start (struct zyd_softc*) ;

__attribute__((used)) static int
zyd_transmit(struct ieee80211com *ic, struct mbuf *m)
{
 struct zyd_softc *sc = ic->ic_softc;
 int error;

 ZYD_LOCK(sc);
 if ((sc->sc_flags & ZYD_FLAG_RUNNING) == 0) {
  ZYD_UNLOCK(sc);
  return (ENXIO);
 }
 error = mbufq_enqueue(&sc->sc_snd, m);
 if (error) {
  ZYD_UNLOCK(sc);
  return (error);
 }
 zyd_start(sc);
 ZYD_UNLOCK(sc);

 return (0);
}
