
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ipw_softc {int flags; int sc_snd; } ;
struct ieee80211com {struct ipw_softc* ic_softc; } ;


 int ENXIO ;
 int IPW_FLAG_RUNNING ;
 int IPW_LOCK (struct ipw_softc*) ;
 int IPW_UNLOCK (struct ipw_softc*) ;
 int ipw_start (struct ipw_softc*) ;
 int mbufq_enqueue (int *,struct mbuf*) ;

__attribute__((used)) static int
ipw_transmit(struct ieee80211com *ic, struct mbuf *m)
{
 struct ipw_softc *sc = ic->ic_softc;
 int error;

 IPW_LOCK(sc);
 if ((sc->flags & IPW_FLAG_RUNNING) == 0) {
  IPW_UNLOCK(sc);
  return (ENXIO);
 }
 error = mbufq_enqueue(&sc->sc_snd, m);
 if (error) {
  IPW_UNLOCK(sc);
  return (error);
 }
 ipw_start(sc);
 IPW_UNLOCK(sc);
 return (0);
}
