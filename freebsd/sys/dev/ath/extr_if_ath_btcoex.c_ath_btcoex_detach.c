
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {scalar_t__ sc_btcoex_mci; } ;


 int ath_btcoex_mci_detach (struct ath_softc*) ;

int
ath_btcoex_detach(struct ath_softc *sc)
{
 if (sc->sc_btcoex_mci) {
  ath_btcoex_mci_detach(sc);
 }

 return (0);
}
