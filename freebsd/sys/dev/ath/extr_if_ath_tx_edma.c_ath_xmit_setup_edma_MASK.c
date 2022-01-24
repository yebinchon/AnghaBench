#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  xmit_drain; int /*<<< orphan*/  xmit_handoff; int /*<<< orphan*/  xmit_dma_restart; int /*<<< orphan*/  xmit_attach_comp_func; int /*<<< orphan*/  xmit_teardown; int /*<<< orphan*/  xmit_setup; } ;
struct ath_softc {TYPE_1__ sc_tx; int /*<<< orphan*/  sc_tx_nmaps; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_tx_statuslen; int /*<<< orphan*/  sc_tx_desclen; int /*<<< orphan*/  sc_ah; } ;

/* Variables and functions */
 int /*<<< orphan*/  ath_edma_attach_comp_func ; 
 int /*<<< orphan*/  ath_edma_dma_restart ; 
 int /*<<< orphan*/  ath_edma_dma_txsetup ; 
 int /*<<< orphan*/  ath_edma_dma_txteardown ; 
 int /*<<< orphan*/  ath_edma_tx_drain ; 
 int /*<<< orphan*/  ath_edma_xmit_handoff ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void
FUNC4(struct ath_softc *sc)
{

	/* Fetch EDMA field and buffer sizes */
	(void) FUNC1(sc->sc_ah, &sc->sc_tx_desclen);
	(void) FUNC2(sc->sc_ah, &sc->sc_tx_statuslen);
	(void) FUNC0(sc->sc_ah, &sc->sc_tx_nmaps);

	if (bootverbose) {
		FUNC3(sc->sc_dev, "TX descriptor length: %d\n",
		    sc->sc_tx_desclen);
		FUNC3(sc->sc_dev, "TX status length: %d\n",
		    sc->sc_tx_statuslen);
		FUNC3(sc->sc_dev, "TX buffers per descriptor: %d\n",
		    sc->sc_tx_nmaps);
	}

	sc->sc_tx.xmit_setup = ath_edma_dma_txsetup;
	sc->sc_tx.xmit_teardown = ath_edma_dma_txteardown;
	sc->sc_tx.xmit_attach_comp_func = ath_edma_attach_comp_func;

	sc->sc_tx.xmit_dma_restart = ath_edma_dma_restart;
	sc->sc_tx.xmit_handoff = ath_edma_xmit_handoff;
	sc->sc_tx.xmit_drain = ath_edma_tx_drain;
}