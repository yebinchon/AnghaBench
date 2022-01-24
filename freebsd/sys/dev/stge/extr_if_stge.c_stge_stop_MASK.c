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
typedef  int uint32_t ;
struct stge_txdesc {int /*<<< orphan*/ * tx_m; int /*<<< orphan*/  tx_dmamap; } ;
struct TYPE_2__ {int /*<<< orphan*/  stge_tx_tag; struct stge_txdesc* stge_txdesc; int /*<<< orphan*/  stge_rx_tag; struct stge_rxdesc* stge_rxdesc; } ;
struct stge_softc {scalar_t__ sc_link; struct ifnet* sc_ifp; TYPE_1__ sc_cdata; scalar_t__ sc_watchdog_timer; int /*<<< orphan*/  sc_tick_ch; } ;
struct stge_rxdesc {int /*<<< orphan*/ * rx_m; int /*<<< orphan*/  rx_dmamap; } ;
struct ifnet {int if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int FUNC0 (struct stge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct stge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct stge_softc*,int /*<<< orphan*/ ,int) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int MC_MASK ; 
 int MC_StatisticsDisable ; 
 int /*<<< orphan*/  STGE_IntEnable ; 
 int /*<<< orphan*/  FUNC3 (struct stge_softc*) ; 
 int /*<<< orphan*/  STGE_MACCtrl ; 
 int /*<<< orphan*/  STGE_RFDListPtrHi ; 
 int /*<<< orphan*/  STGE_RFDListPtrLo ; 
 int STGE_RX_RING_CNT ; 
 int /*<<< orphan*/  STGE_TFDListPtrHi ; 
 int /*<<< orphan*/  STGE_TFDListPtrLo ; 
 int STGE_TX_RING_CNT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct stge_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct stge_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct stge_softc*) ; 

__attribute__((used)) static void
FUNC11(struct stge_softc *sc)
{
	struct ifnet *ifp;
	struct stge_txdesc *txd;
	struct stge_rxdesc *rxd;
	uint32_t v;
	int i;

	FUNC3(sc);
	/*
	 * Stop the one second clock.
	 */
	FUNC6(&sc->sc_tick_ch);
	sc->sc_watchdog_timer = 0;

	/*
	 * Disable interrupts.
	 */
	FUNC1(sc, STGE_IntEnable, 0);

	/*
	 * Stop receiver, transmitter, and stats update.
	 */
	FUNC9(sc);
	FUNC10(sc);
	v = FUNC0(sc, STGE_MACCtrl) & MC_MASK;
	v |= MC_StatisticsDisable;
	FUNC2(sc, STGE_MACCtrl, v);

	/*
	 * Stop the transmit and receive DMA.
	 */
	FUNC8(sc);
	FUNC2(sc, STGE_TFDListPtrHi, 0);
	FUNC2(sc, STGE_TFDListPtrLo, 0);
	FUNC2(sc, STGE_RFDListPtrHi, 0);
	FUNC2(sc, STGE_RFDListPtrLo, 0);

	/*
	 * Free RX and TX mbufs still in the queues.
	 */
	for (i = 0; i < STGE_RX_RING_CNT; i++) {
		rxd = &sc->sc_cdata.stge_rxdesc[i];
		if (rxd->rx_m != NULL) {
			FUNC4(sc->sc_cdata.stge_rx_tag,
			    rxd->rx_dmamap, BUS_DMASYNC_POSTREAD);
			FUNC5(sc->sc_cdata.stge_rx_tag,
			    rxd->rx_dmamap);
			FUNC7(rxd->rx_m);
			rxd->rx_m = NULL;
		}
        }
	for (i = 0; i < STGE_TX_RING_CNT; i++) {
		txd = &sc->sc_cdata.stge_txdesc[i];
		if (txd->tx_m != NULL) {
			FUNC4(sc->sc_cdata.stge_tx_tag,
			    txd->tx_dmamap, BUS_DMASYNC_POSTWRITE);
			FUNC5(sc->sc_cdata.stge_tx_tag,
			    txd->tx_dmamap);
			FUNC7(txd->tx_m);
			txd->tx_m = NULL;
		}
        }

	/*
	 * Mark the interface down and cancel the watchdog timer.
	 */
	ifp = sc->sc_ifp;
	ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
	sc->sc_link = 0;
}