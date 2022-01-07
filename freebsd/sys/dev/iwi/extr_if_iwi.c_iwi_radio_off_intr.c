
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwi_softc {int sc_radiofftask; int sc_ic; } ;


 int ieee80211_runtask (int *,int *) ;

__attribute__((used)) static void
iwi_radio_off_intr(struct iwi_softc *sc)
{

 ieee80211_runtask(&sc->sc_ic, &sc->sc_radiofftask);
}
