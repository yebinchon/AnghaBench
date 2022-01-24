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
struct TYPE_2__ {int /*<<< orphan*/  ste_tx_tag; struct ste_chain* ste_tx_chain; int /*<<< orphan*/  ste_rx_tag; struct ste_chain_onefrag* ste_rx_chain; } ;
struct ste_softc {TYPE_1__ ste_cdata; int /*<<< orphan*/  ste_dev; scalar_t__ ste_timer; int /*<<< orphan*/  ste_callout; struct ifnet* ste_ifp; } ;
struct ste_chain_onefrag {int /*<<< orphan*/ * ste_mbuf; int /*<<< orphan*/  ste_map; } ;
struct ste_chain {int /*<<< orphan*/ * ste_mbuf; int /*<<< orphan*/  ste_map; } ;
struct ifnet {int if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int FUNC0 (struct ste_softc*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ste_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ste_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ste_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ste_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  STE_COUNTDOWN ; 
 int /*<<< orphan*/  STE_DMACTL ; 
 int STE_DMACTL_RXDMA_STALL ; 
 int STE_DMACTL_TXDMA_STALL ; 
 int /*<<< orphan*/  STE_IMR ; 
 int /*<<< orphan*/  STE_ISR_ACK ; 
 int /*<<< orphan*/  FUNC6 (struct ste_softc*) ; 
 int /*<<< orphan*/  STE_MACCTL1 ; 
 int STE_MACCTL1_RX_DISABLE ; 
 int STE_MACCTL1_STATS_DISABLE ; 
 int STE_MACCTL1_TX_DISABLE ; 
 int /*<<< orphan*/  STE_RX_DMALIST_PTR ; 
 int /*<<< orphan*/  STE_RX_DMAPOLL_PERIOD ; 
 int STE_RX_LIST_CNT ; 
 int STE_TIMEOUT ; 
 int /*<<< orphan*/  STE_TX_DMALIST_PTR ; 
 int /*<<< orphan*/  STE_TX_DMAPOLL_PERIOD ; 
 int STE_TX_LIST_CNT ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct ste_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct ste_softc*) ; 

__attribute__((used)) static void
FUNC14(struct ste_softc *sc)
{
	struct ifnet *ifp;
	struct ste_chain_onefrag *cur_rx;
	struct ste_chain *cur_tx;
	uint32_t val;
	int i;

	FUNC6(sc);
	ifp = sc->ste_ifp;

	FUNC9(&sc->ste_callout);
	sc->ste_timer = 0;
	ifp->if_drv_flags &= ~(IFF_DRV_RUNNING|IFF_DRV_OACTIVE);

	FUNC3(sc, STE_IMR, 0);
	FUNC3(sc, STE_COUNTDOWN, 0);
	/* Stop pending DMA. */
	val = FUNC1(sc, STE_DMACTL);
	val |= STE_DMACTL_TXDMA_STALL | STE_DMACTL_RXDMA_STALL;
	FUNC4(sc, STE_DMACTL, val);
	FUNC13(sc);
	/* Disable auto-polling. */
	FUNC2(sc, STE_RX_DMAPOLL_PERIOD, 0);
	FUNC2(sc, STE_TX_DMAPOLL_PERIOD, 0);
	/* Nullify DMA address to stop any further DMA. */
	FUNC4(sc, STE_RX_DMALIST_PTR, 0);
	FUNC4(sc, STE_TX_DMALIST_PTR, 0);
	/* Stop TX/RX MAC. */
	val = FUNC0(sc, STE_MACCTL1);
	val |= STE_MACCTL1_TX_DISABLE | STE_MACCTL1_RX_DISABLE |
	    STE_MACCTL1_STATS_DISABLE;
	FUNC3(sc, STE_MACCTL1, val);
	for (i = 0; i < STE_TIMEOUT; i++) {
		FUNC5(10);
		if ((FUNC0(sc, STE_MACCTL1) & (STE_MACCTL1_TX_DISABLE |
		    STE_MACCTL1_RX_DISABLE | STE_MACCTL1_STATS_DISABLE)) == 0)
			break;
	}
	if (i == STE_TIMEOUT)
		FUNC10(sc->ste_dev, "Stopping MAC timed out\n");
	/* Acknowledge any pending interrupts. */
	FUNC0(sc, STE_ISR_ACK);
	FUNC12(sc);

	for (i = 0; i < STE_RX_LIST_CNT; i++) {
		cur_rx = &sc->ste_cdata.ste_rx_chain[i];
		if (cur_rx->ste_mbuf != NULL) {
			FUNC7(sc->ste_cdata.ste_rx_tag,
			    cur_rx->ste_map, BUS_DMASYNC_POSTREAD);
			FUNC8(sc->ste_cdata.ste_rx_tag,
			    cur_rx->ste_map);
			FUNC11(cur_rx->ste_mbuf);
			cur_rx->ste_mbuf = NULL;
		}
	}

	for (i = 0; i < STE_TX_LIST_CNT; i++) {
		cur_tx = &sc->ste_cdata.ste_tx_chain[i];
		if (cur_tx->ste_mbuf != NULL) {
			FUNC7(sc->ste_cdata.ste_tx_tag,
			    cur_tx->ste_map, BUS_DMASYNC_POSTWRITE);
			FUNC8(sc->ste_cdata.ste_tx_tag,
			    cur_tx->ste_map);
			FUNC11(cur_tx->ste_mbuf);
			cur_tx->ste_mbuf = NULL;
		}
	}
}