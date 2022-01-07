
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct iwi_softc {int sc_snd; int sc_running; } ;
struct ieee80211com {struct iwi_softc* ic_softc; } ;


 int ENXIO ;
 int IWI_LOCK (struct iwi_softc*) ;
 int IWI_LOCK_DECL ;
 int IWI_UNLOCK (struct iwi_softc*) ;
 int iwi_start (struct iwi_softc*) ;
 int mbufq_enqueue (int *,struct mbuf*) ;

__attribute__((used)) static int
iwi_transmit(struct ieee80211com *ic, struct mbuf *m)
{
 struct iwi_softc *sc = ic->ic_softc;
 int error;
 IWI_LOCK_DECL;

 IWI_LOCK(sc);
 if (!sc->sc_running) {
  IWI_UNLOCK(sc);
  return (ENXIO);
 }
 error = mbufq_enqueue(&sc->sc_snd, m);
 if (error) {
  IWI_UNLOCK(sc);
  return (error);
 }
 iwi_start(sc);
 IWI_UNLOCK(sc);
 return (0);
}
