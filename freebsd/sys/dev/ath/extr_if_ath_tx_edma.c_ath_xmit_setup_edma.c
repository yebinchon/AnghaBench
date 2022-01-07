
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xmit_drain; int xmit_handoff; int xmit_dma_restart; int xmit_attach_comp_func; int xmit_teardown; int xmit_setup; } ;
struct ath_softc {TYPE_1__ sc_tx; int sc_tx_nmaps; int sc_dev; int sc_tx_statuslen; int sc_tx_desclen; int sc_ah; } ;


 int ath_edma_attach_comp_func ;
 int ath_edma_dma_restart ;
 int ath_edma_dma_txsetup ;
 int ath_edma_dma_txteardown ;
 int ath_edma_tx_drain ;
 int ath_edma_xmit_handoff ;
 int ath_hal_getntxmaps (int ,int *) ;
 int ath_hal_gettxdesclen (int ,int *) ;
 int ath_hal_gettxstatuslen (int ,int *) ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,int ) ;

void
ath_xmit_setup_edma(struct ath_softc *sc)
{


 (void) ath_hal_gettxdesclen(sc->sc_ah, &sc->sc_tx_desclen);
 (void) ath_hal_gettxstatuslen(sc->sc_ah, &sc->sc_tx_statuslen);
 (void) ath_hal_getntxmaps(sc->sc_ah, &sc->sc_tx_nmaps);

 if (bootverbose) {
  device_printf(sc->sc_dev, "TX descriptor length: %d\n",
      sc->sc_tx_desclen);
  device_printf(sc->sc_dev, "TX status length: %d\n",
      sc->sc_tx_statuslen);
  device_printf(sc->sc_dev, "TX buffers per descriptor: %d\n",
      sc->sc_tx_nmaps);
 }

 sc->sc_tx.xmit_setup = ath_edma_dma_txsetup;
 sc->sc_tx.xmit_teardown = ath_edma_dma_txteardown;
 sc->sc_tx.xmit_attach_comp_func = ath_edma_attach_comp_func;

 sc->sc_tx.xmit_dma_restart = ath_edma_dma_restart;
 sc->sc_tx.xmit_handoff = ath_edma_xmit_handoff;
 sc->sc_tx.xmit_drain = ath_edma_tx_drain;
}
