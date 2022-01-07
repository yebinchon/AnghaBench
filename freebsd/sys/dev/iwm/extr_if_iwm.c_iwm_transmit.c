
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct iwm_softc {int sc_flags; int sc_snd; } ;
struct ieee80211com {struct iwm_softc* ic_softc; } ;


 int ENXIO ;
 int IWM_FLAG_HW_INITED ;
 int IWM_LOCK (struct iwm_softc*) ;
 int IWM_UNLOCK (struct iwm_softc*) ;
 int iwm_start (struct iwm_softc*) ;
 int mbufq_enqueue (int *,struct mbuf*) ;

__attribute__((used)) static int
iwm_transmit(struct ieee80211com *ic, struct mbuf *m)
{
 struct iwm_softc *sc;
 int error;

 sc = ic->ic_softc;

 IWM_LOCK(sc);
 if ((sc->sc_flags & IWM_FLAG_HW_INITED) == 0) {
  IWM_UNLOCK(sc);
  return (ENXIO);
 }
 error = mbufq_enqueue(&sc->sc_snd, m);
 if (error) {
  IWM_UNLOCK(sc);
  return (error);
 }
 iwm_start(sc);
 IWM_UNLOCK(sc);
 return (0);
}
