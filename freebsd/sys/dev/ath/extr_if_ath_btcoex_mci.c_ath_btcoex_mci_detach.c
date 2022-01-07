
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buf; } ;
struct ath_softc {TYPE_1__ sc_btcoex; int sc_ah; } ;


 int ath_descdma_cleanup (struct ath_softc*,int *,int *) ;
 int ath_hal_btcoex_mci_detach (int ) ;

int
ath_btcoex_mci_detach(struct ath_softc *sc)
{

 ath_hal_btcoex_mci_detach(sc->sc_ah);
 ath_descdma_cleanup(sc, &sc->sc_btcoex.buf, ((void*)0));
 return (0);
}
