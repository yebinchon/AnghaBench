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
struct msk_txdesc {int /*<<< orphan*/ * tx_m; int /*<<< orphan*/  tx_dmamap; } ;
struct msk_softc {int msk_intrmask; int msk_intrhwemask; } ;
struct msk_rxdesc {int /*<<< orphan*/ * rx_m; int /*<<< orphan*/  rx_dmamap; } ;
struct TYPE_2__ {int /*<<< orphan*/  msk_tx_tag; struct msk_txdesc* msk_txdesc; int /*<<< orphan*/  msk_jumbo_rx_tag; struct msk_rxdesc* msk_jumbo_rxdesc; int /*<<< orphan*/  msk_rx_tag; struct msk_rxdesc* msk_rxdesc; } ;
struct msk_if_softc {scalar_t__ msk_port; int /*<<< orphan*/  msk_flags; TYPE_1__ msk_cdata; int /*<<< orphan*/  msk_rxq; int /*<<< orphan*/  msk_if_dev; int /*<<< orphan*/  msk_txq; scalar_t__ msk_watchdog_timer; int /*<<< orphan*/  msk_tick_ch; struct ifnet* msk_ifp; struct msk_softc* msk_softc; } ;
struct ifnet {int if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  B0_HWE_IMSK ; 
 int /*<<< orphan*/  B0_IMSK ; 
 int BMU_FIFO_RST ; 
 int BMU_IDLE ; 
 int BMU_RST_SET ; 
 int BMU_STOP ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 scalar_t__ FUNC0 (struct msk_softc*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct msk_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct msk_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct msk_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  GMAC_CTRL ; 
 int /*<<< orphan*/  GMAC_IRQ_MSK ; 
 int FUNC5 (struct msk_softc*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct msk_softc*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int GMC_PAUSE_OFF ; 
 int GMF_RST_SET ; 
 int GM_GPCR_RX_ENA ; 
 int GM_GPCR_TX_ENA ; 
 int /*<<< orphan*/  GM_GP_CTRL ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSK_FLAG_LINK ; 
 int /*<<< orphan*/  FUNC8 (struct msk_if_softc*) ; 
 int MSK_JUMBO_RX_RING_CNT ; 
 scalar_t__ MSK_PORT_A ; 
 int MSK_RX_RING_CNT ; 
 int MSK_TIMEOUT ; 
 int MSK_TX_RING_CNT ; 
 int /*<<< orphan*/  PHY_ADDR_MARV ; 
 int /*<<< orphan*/  PHY_MARV_INT_MASK ; 
 int /*<<< orphan*/  PREF_UNIT_CTRL_REG ; 
 int PREF_UNIT_RST_SET ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Q_CSR ; 
 int /*<<< orphan*/  Q_RL ; 
 int /*<<< orphan*/  Q_RSL ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RB_CTRL ; 
 int RB_DIS_OP_MD ; 
 int RB_RST_SET ; 
 int /*<<< orphan*/  RX_GMF_CTRL_T ; 
 int /*<<< orphan*/  TXA_CTRL ; 
 int TXA_DIS_ARB ; 
 int /*<<< orphan*/  TX_GMF_CTRL_T ; 
 int Y2_HWE_L1_MASK ; 
 int Y2_HWE_L2_MASK ; 
 int Y2_IS_PORT_A ; 
 int Y2_IS_PORT_B ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct msk_if_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct msk_if_softc*) ; 

__attribute__((used)) static void
FUNC19(struct msk_if_softc *sc_if)
{
	struct msk_softc *sc;
	struct msk_txdesc *txd;
	struct msk_rxdesc *rxd;
	struct msk_rxdesc *jrxd;
	struct ifnet *ifp;
	uint32_t val;
	int i;

	FUNC8(sc_if);
	sc = sc_if->msk_softc;
	ifp = sc_if->msk_ifp;

	FUNC14(&sc_if->msk_tick_ch);
	sc_if->msk_watchdog_timer = 0;

	/* Disable interrupts. */
	if (sc_if->msk_port == MSK_PORT_A) {
		sc->msk_intrmask &= ~Y2_IS_PORT_A;
		sc->msk_intrhwemask &= ~Y2_HWE_L1_MASK;
	} else {
		sc->msk_intrmask &= ~Y2_IS_PORT_B;
		sc->msk_intrhwemask &= ~Y2_HWE_L2_MASK;
	}
	FUNC3(sc, B0_HWE_IMSK, sc->msk_intrhwemask);
	FUNC1(sc, B0_HWE_IMSK);
	FUNC3(sc, B0_IMSK, sc->msk_intrmask);
	FUNC1(sc, B0_IMSK);

	/* Disable Tx/Rx MAC. */
	val = FUNC5(sc, sc_if->msk_port, GM_GP_CTRL);
	val &= ~(GM_GPCR_RX_ENA | GM_GPCR_TX_ENA);
	FUNC6(sc, sc_if->msk_port, GM_GP_CTRL, val);
	/* Read again to ensure writing. */
	FUNC5(sc, sc_if->msk_port, GM_GP_CTRL);
	/* Update stats and clear counters. */
	FUNC18(sc_if);

	/* Stop Tx BMU. */
	FUNC3(sc, FUNC9(sc_if->msk_txq, Q_CSR), BMU_STOP);
	val = FUNC1(sc, FUNC9(sc_if->msk_txq, Q_CSR));
	for (i = 0; i < MSK_TIMEOUT; i++) {
		if ((val & (BMU_STOP | BMU_IDLE)) == 0) {
			FUNC3(sc, FUNC9(sc_if->msk_txq, Q_CSR),
			    BMU_STOP);
			val = FUNC1(sc, FUNC9(sc_if->msk_txq, Q_CSR));
		} else
			break;
		FUNC4(1);
	}
	if (i == MSK_TIMEOUT)
		FUNC15(sc_if->msk_if_dev, "Tx BMU stop failed\n");
	FUNC2(sc, FUNC10(sc_if->msk_txq, RB_CTRL),
	    RB_RST_SET | RB_DIS_OP_MD);

	/* Disable all GMAC interrupt. */
	FUNC2(sc, FUNC7(sc_if->msk_port, GMAC_IRQ_MSK), 0);
	/* Disable PHY interrupt. */
	FUNC17(sc_if, PHY_ADDR_MARV, PHY_MARV_INT_MASK, 0);

	/* Disable the RAM Interface Arbiter. */
	FUNC2(sc, FUNC7(sc_if->msk_port, TXA_CTRL), TXA_DIS_ARB);

	/* Reset the PCI FIFO of the async Tx queue */
	FUNC3(sc, FUNC9(sc_if->msk_txq, Q_CSR),
	    BMU_RST_SET | BMU_FIFO_RST);

	/* Reset the Tx prefetch units. */
	FUNC3(sc, FUNC11(sc_if->msk_txq, PREF_UNIT_CTRL_REG),
	    PREF_UNIT_RST_SET);

	/* Reset the RAM Buffer async Tx queue. */
	FUNC2(sc, FUNC10(sc_if->msk_txq, RB_CTRL), RB_RST_SET);

	/* Reset Tx MAC FIFO. */
	FUNC3(sc, FUNC7(sc_if->msk_port, TX_GMF_CTRL_T), GMF_RST_SET);
	/* Set Pause Off. */
	FUNC3(sc, FUNC7(sc_if->msk_port, GMAC_CTRL), GMC_PAUSE_OFF);

	/*
	 * The Rx Stop command will not work for Yukon-2 if the BMU does not
	 * reach the end of packet and since we can't make sure that we have
	 * incoming data, we must reset the BMU while it is not during a DMA
	 * transfer. Since it is possible that the Rx path is still active,
	 * the Rx RAM buffer will be stopped first, so any possible incoming
	 * data will not trigger a DMA. After the RAM buffer is stopped, the
	 * BMU is polled until any DMA in progress is ended and only then it
	 * will be reset.
	 */

	/* Disable the RAM Buffer receive queue. */
	FUNC2(sc, FUNC10(sc_if->msk_rxq, RB_CTRL), RB_DIS_OP_MD);
	for (i = 0; i < MSK_TIMEOUT; i++) {
		if (FUNC0(sc, FUNC10(sc_if->msk_rxq, Q_RSL)) ==
		    FUNC0(sc, FUNC10(sc_if->msk_rxq, Q_RL)))
			break;
		FUNC4(1);
	}
	if (i == MSK_TIMEOUT)
		FUNC15(sc_if->msk_if_dev, "Rx BMU stop failed\n");
	FUNC3(sc, FUNC9(sc_if->msk_rxq, Q_CSR),
	    BMU_RST_SET | BMU_FIFO_RST);
	/* Reset the Rx prefetch unit. */
	FUNC3(sc, FUNC11(sc_if->msk_rxq, PREF_UNIT_CTRL_REG),
	    PREF_UNIT_RST_SET);
	/* Reset the RAM Buffer receive queue. */
	FUNC2(sc, FUNC10(sc_if->msk_rxq, RB_CTRL), RB_RST_SET);
	/* Reset Rx MAC FIFO. */
	FUNC3(sc, FUNC7(sc_if->msk_port, RX_GMF_CTRL_T), GMF_RST_SET);

	/* Free Rx and Tx mbufs still in the queues. */
	for (i = 0; i < MSK_RX_RING_CNT; i++) {
		rxd = &sc_if->msk_cdata.msk_rxdesc[i];
		if (rxd->rx_m != NULL) {
			FUNC12(sc_if->msk_cdata.msk_rx_tag,
			    rxd->rx_dmamap, BUS_DMASYNC_POSTREAD);
			FUNC13(sc_if->msk_cdata.msk_rx_tag,
			    rxd->rx_dmamap);
			FUNC16(rxd->rx_m);
			rxd->rx_m = NULL;
		}
	}
	for (i = 0; i < MSK_JUMBO_RX_RING_CNT; i++) {
		jrxd = &sc_if->msk_cdata.msk_jumbo_rxdesc[i];
		if (jrxd->rx_m != NULL) {
			FUNC12(sc_if->msk_cdata.msk_jumbo_rx_tag,
			    jrxd->rx_dmamap, BUS_DMASYNC_POSTREAD);
			FUNC13(sc_if->msk_cdata.msk_jumbo_rx_tag,
			    jrxd->rx_dmamap);
			FUNC16(jrxd->rx_m);
			jrxd->rx_m = NULL;
		}
	}
	for (i = 0; i < MSK_TX_RING_CNT; i++) {
		txd = &sc_if->msk_cdata.msk_txdesc[i];
		if (txd->tx_m != NULL) {
			FUNC12(sc_if->msk_cdata.msk_tx_tag,
			    txd->tx_dmamap, BUS_DMASYNC_POSTWRITE);
			FUNC13(sc_if->msk_cdata.msk_tx_tag,
			    txd->tx_dmamap);
			FUNC16(txd->tx_m);
			txd->tx_m = NULL;
		}
	}

	/*
	 * Mark the interface down.
	 */
	ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
	sc_if->msk_flags &= ~MSK_FLAG_LINK;
}