
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwi_softc {int sc_rftimer; int sc_radiontask; int sc_ic; } ;


 int IWI_LOCK_ASSERT (struct iwi_softc*) ;
 int callout_reset (int *,int,void (*) (void*),struct iwi_softc*) ;
 int hz ;
 int ieee80211_runtask (int *,int *) ;
 int iwi_getrfkill (struct iwi_softc*) ;

__attribute__((used)) static void
iwi_rfkill_poll(void *arg)
{
 struct iwi_softc *sc = arg;

 IWI_LOCK_ASSERT(sc);






 if (!iwi_getrfkill(sc)) {
  ieee80211_runtask(&sc->sc_ic, &sc->sc_radiontask);
  return;
 }
 callout_reset(&sc->sc_rftimer, 2*hz, iwi_rfkill_poll, sc);
}
