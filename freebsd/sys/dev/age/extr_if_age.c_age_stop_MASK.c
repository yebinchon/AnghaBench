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
struct ifnet {int if_drv_flags; } ;
struct age_txdesc {int /*<<< orphan*/ * tx_m; int /*<<< orphan*/  tx_dmamap; } ;
struct TYPE_2__ {int /*<<< orphan*/  age_tx_tag; struct age_txdesc* age_txdesc; int /*<<< orphan*/  age_rx_tag; struct age_rxdesc* age_rxdesc; int /*<<< orphan*/ * age_rxhead; } ;
struct age_softc {TYPE_1__ age_cdata; int /*<<< orphan*/  age_dev; scalar_t__ age_watchdog_timer; int /*<<< orphan*/  age_tick_ch; int /*<<< orphan*/  age_flags; struct ifnet* age_ifp; } ;
struct age_rxdesc {int /*<<< orphan*/ * rx_m; int /*<<< orphan*/  rx_dmamap; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGE_CSMB_CTRL ; 
 int /*<<< orphan*/  AGE_DMA_CFG ; 
 int /*<<< orphan*/  AGE_FLAG_LINK ; 
 int /*<<< orphan*/  AGE_IDLE_STATUS ; 
 int /*<<< orphan*/  AGE_INTR_MASK ; 
 int /*<<< orphan*/  AGE_INTR_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct age_softc*) ; 
 int AGE_RESET_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (struct age_softc*) ; 
 int /*<<< orphan*/  AGE_RXQ_CFG ; 
 int AGE_RX_RING_CNT ; 
 int /*<<< orphan*/  AGE_TXQ_CFG ; 
 int AGE_TX_RING_CNT ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int FUNC2 (struct age_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct age_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int DMA_CFG_RD_ENB ; 
 int DMA_CFG_WR_ENB ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int RXQ_CFG_ENB ; 
 int TXQ_CFG_ENB ; 
 int /*<<< orphan*/  FUNC5 (struct age_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct age_softc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(struct age_softc *sc)
{
	struct ifnet *ifp;
	struct age_txdesc *txd;
	struct age_rxdesc *rxd;
	uint32_t reg;
	int i;

	FUNC0(sc);
	/*
	 * Mark the interface down and cancel the watchdog timer.
	 */
	ifp = sc->age_ifp;
	ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
	sc->age_flags &= ~AGE_FLAG_LINK;
	FUNC9(&sc->age_tick_ch);
	sc->age_watchdog_timer = 0;

	/*
	 * Disable interrupts.
	 */
	FUNC3(sc, AGE_INTR_MASK, 0);
	FUNC3(sc, AGE_INTR_STATUS, 0xFFFFFFFF);
	/* Stop CMB/SMB updates. */
	FUNC3(sc, AGE_CSMB_CTRL, 0);
	/* Stop Rx/Tx MAC. */
	FUNC5(sc);
	FUNC6(sc);
	/* Stop DMA. */
	FUNC3(sc, AGE_DMA_CFG,
	    FUNC2(sc, AGE_DMA_CFG) & ~(DMA_CFG_RD_ENB | DMA_CFG_WR_ENB));
	/* Stop TxQ/RxQ. */
	FUNC3(sc, AGE_TXQ_CFG,
	    FUNC2(sc, AGE_TXQ_CFG) & ~TXQ_CFG_ENB);
	FUNC3(sc, AGE_RXQ_CFG,
	    FUNC2(sc, AGE_RXQ_CFG) & ~RXQ_CFG_ENB);
	for (i = AGE_RESET_TIMEOUT; i > 0; i--) {
		if ((reg = FUNC2(sc, AGE_IDLE_STATUS)) == 0)
			break;
		FUNC4(10);
	}
	if (i == 0)
		FUNC10(sc->age_dev,
		    "stopping Rx/Tx MACs timed out(0x%08x)!\n", reg);

	 /* Reclaim Rx buffers that have been processed. */
	if (sc->age_cdata.age_rxhead != NULL)
		FUNC11(sc->age_cdata.age_rxhead);
	FUNC1(sc);
	/*
	 * Free RX and TX mbufs still in the queues.
	 */
	for (i = 0; i < AGE_RX_RING_CNT; i++) {
		rxd = &sc->age_cdata.age_rxdesc[i];
		if (rxd->rx_m != NULL) {
			FUNC7(sc->age_cdata.age_rx_tag,
			    rxd->rx_dmamap, BUS_DMASYNC_POSTREAD);
			FUNC8(sc->age_cdata.age_rx_tag,
			    rxd->rx_dmamap);
			FUNC11(rxd->rx_m);
			rxd->rx_m = NULL;
		}
        }
	for (i = 0; i < AGE_TX_RING_CNT; i++) {
		txd = &sc->age_cdata.age_txdesc[i];
		if (txd->tx_m != NULL) {
			FUNC7(sc->age_cdata.age_tx_tag,
			    txd->tx_dmamap, BUS_DMASYNC_POSTWRITE);
			FUNC8(sc->age_cdata.age_tx_tag,
			    txd->tx_dmamap);
			FUNC11(txd->tx_m);
			txd->tx_m = NULL;
		}
        }
}