
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xmit_drain; int xmit_handoff; int xmit_dma_restart; int xmit_attach_comp_func; int xmit_teardown; int xmit_setup; } ;
struct ath_softc {int sc_tx_desclen; int sc_tx_statuslen; int sc_tx_nmaps; TYPE_1__ sc_tx; } ;
struct ath_desc {int dummy; } ;


 int ath_legacy_attach_comp_func ;
 int ath_legacy_dma_txsetup ;
 int ath_legacy_dma_txteardown ;
 int ath_legacy_tx_dma_restart ;
 int ath_legacy_tx_drain ;
 int ath_legacy_xmit_handoff ;

void
ath_xmit_setup_legacy(struct ath_softc *sc)
{




 sc->sc_tx_desclen = sizeof(struct ath_desc);
 sc->sc_tx_statuslen = sizeof(struct ath_desc);
 sc->sc_tx_nmaps = 1;

 sc->sc_tx.xmit_setup = ath_legacy_dma_txsetup;
 sc->sc_tx.xmit_teardown = ath_legacy_dma_txteardown;
 sc->sc_tx.xmit_attach_comp_func = ath_legacy_attach_comp_func;

 sc->sc_tx.xmit_dma_restart = ath_legacy_tx_dma_restart;
 sc->sc_tx.xmit_handoff = ath_legacy_xmit_handoff;

 sc->sc_tx.xmit_drain = ath_legacy_tx_drain;
}
