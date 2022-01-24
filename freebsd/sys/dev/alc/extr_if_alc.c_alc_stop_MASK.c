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
struct alc_txdesc {int /*<<< orphan*/ * tx_m; int /*<<< orphan*/  tx_dmamap; } ;
struct TYPE_2__ {int /*<<< orphan*/  alc_tx_tag; struct alc_txdesc* alc_txdesc; int /*<<< orphan*/  alc_rx_tag; struct alc_rxdesc* alc_rxdesc; int /*<<< orphan*/ * alc_rxhead; } ;
struct alc_softc {TYPE_1__ alc_cdata; scalar_t__ alc_watchdog_timer; int /*<<< orphan*/  alc_tick_ch; int /*<<< orphan*/  alc_flags; struct ifnet* alc_ifp; } ;
struct alc_rxdesc {int /*<<< orphan*/ * rx_m; int /*<<< orphan*/  rx_dmamap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALC_DMA_CFG ; 
 int /*<<< orphan*/  ALC_FLAG_LINK ; 
 int /*<<< orphan*/  ALC_INTR_MASK ; 
 int /*<<< orphan*/  ALC_INTR_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct alc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct alc_softc*) ; 
 int ALC_RX_RING_CNT ; 
 int ALC_TX_RING_CNT ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int FUNC2 (struct alc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct alc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int DMA_CFG_CMB_ENB ; 
 int DMA_CFG_SMB_DIS ; 
 int DMA_CFG_SMB_ENB ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  IFM_UNKNOWN ; 
 int /*<<< orphan*/  FUNC5 (struct alc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct alc_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct alc_softc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(struct alc_softc *sc)
{
	struct ifnet *ifp;
	struct alc_txdesc *txd;
	struct alc_rxdesc *rxd;
	uint32_t reg;
	int i;

	FUNC0(sc);
	/*
	 * Mark the interface down and cancel the watchdog timer.
	 */
	ifp = sc->alc_ifp;
	ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
	sc->alc_flags &= ~ALC_FLAG_LINK;
	FUNC10(&sc->alc_tick_ch);
	sc->alc_watchdog_timer = 0;
	FUNC6(sc);
	/* Disable interrupts. */
	FUNC3(sc, ALC_INTR_MASK, 0);
	FUNC3(sc, ALC_INTR_STATUS, 0xFFFFFFFF);
	/* Disable DMA. */
	reg = FUNC2(sc, ALC_DMA_CFG);
	reg &= ~(DMA_CFG_CMB_ENB | DMA_CFG_SMB_ENB);
	reg |= DMA_CFG_SMB_DIS;
	FUNC3(sc, ALC_DMA_CFG, reg);
	FUNC4(1000);
	/* Stop Rx/Tx MACs. */
	FUNC7(sc);
	/* Disable interrupts which might be touched in taskq handler. */
	FUNC3(sc, ALC_INTR_STATUS, 0xFFFFFFFF);
	/* Disable L0s/L1s */
	FUNC5(sc, 0, IFM_UNKNOWN);
	/* Reclaim Rx buffers that have been processed. */
	if (sc->alc_cdata.alc_rxhead != NULL)
		FUNC11(sc->alc_cdata.alc_rxhead);
	FUNC1(sc);
	/*
	 * Free Tx/Rx mbufs still in the queues.
	 */
	for (i = 0; i < ALC_RX_RING_CNT; i++) {
		rxd = &sc->alc_cdata.alc_rxdesc[i];
		if (rxd->rx_m != NULL) {
			FUNC8(sc->alc_cdata.alc_rx_tag,
			    rxd->rx_dmamap, BUS_DMASYNC_POSTREAD);
			FUNC9(sc->alc_cdata.alc_rx_tag,
			    rxd->rx_dmamap);
			FUNC11(rxd->rx_m);
			rxd->rx_m = NULL;
		}
	}
	for (i = 0; i < ALC_TX_RING_CNT; i++) {
		txd = &sc->alc_cdata.alc_txdesc[i];
		if (txd->tx_m != NULL) {
			FUNC8(sc->alc_cdata.alc_tx_tag,
			    txd->tx_dmamap, BUS_DMASYNC_POSTWRITE);
			FUNC9(sc->alc_cdata.alc_tx_tag,
			    txd->tx_dmamap);
			FUNC11(txd->tx_m);
			txd->tx_m = NULL;
		}
	}
}