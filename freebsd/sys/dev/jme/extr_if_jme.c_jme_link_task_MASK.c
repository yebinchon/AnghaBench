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
struct mii_data {int mii_media_status; int /*<<< orphan*/  mii_media_active; } ;
struct jme_txdesc {scalar_t__ tx_ndesc; int /*<<< orphan*/ * tx_m; int /*<<< orphan*/  tx_dmamap; } ;
struct TYPE_2__ {scalar_t__ jme_tx_cnt; scalar_t__ jme_rx_cons; int /*<<< orphan*/  jme_tx_tag; struct jme_txdesc* jme_txdesc; int /*<<< orphan*/ * jme_rxhead; } ;
struct jme_softc {int jme_flags; int jme_rxcsr; int jme_txcsr; int /*<<< orphan*/  jme_tq; int /*<<< orphan*/  jme_tick_ch; scalar_t__ jme_morework; TYPE_1__ jme_cdata; int /*<<< orphan*/  jme_int_task; scalar_t__ jme_watchdog_timer; struct ifnet* jme_ifp; int /*<<< orphan*/  jme_miibus; } ;
struct ifnet {int if_drv_flags; } ;
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int FUNC0 (struct jme_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct jme_softc*,int /*<<< orphan*/ ,int) ; 
 int GHC_TX_MAC_CLK_DIS ; 
 int GPREG1_RX_MAC_CLK_DIS ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
#define  IFM_1000_T 130 
#define  IFM_100_TX 129 
#define  IFM_10_T 128 
 int IFM_AVALID ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int JME_FLAG_FASTETH ; 
 int JME_FLAG_LINK ; 
 int JME_FLAG_RXCLK ; 
 int JME_FLAG_TXCLK ; 
 int /*<<< orphan*/  JME_GHC ; 
 int /*<<< orphan*/  JME_GPREG1 ; 
 int JME_INTRS ; 
 int /*<<< orphan*/  JME_INTR_MASK_CLR ; 
 int /*<<< orphan*/  JME_INTR_MASK_SET ; 
 int /*<<< orphan*/  FUNC5 (struct jme_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct jme_softc*) ; 
 int /*<<< orphan*/  JME_RXCSR ; 
 int /*<<< orphan*/  JME_RXDBA_HI ; 
 int /*<<< orphan*/  JME_RXDBA_LO ; 
 int /*<<< orphan*/  FUNC7 (struct jme_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JME_TXCSR ; 
 int /*<<< orphan*/  JME_TXDBA_HI ; 
 int /*<<< orphan*/  JME_TXDBA_LO ; 
 int /*<<< orphan*/  FUNC8 (struct jme_softc*,int /*<<< orphan*/ ) ; 
 int JME_TX_RING_CNT ; 
 int /*<<< orphan*/  FUNC9 (struct jme_softc*) ; 
 int RXCSR_RXQ_START ; 
 int RXCSR_RX_ENB ; 
 int TXCSR_TX_ENB ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct jme_softc*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct mii_data* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC15 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct jme_softc*) ; 
 int /*<<< orphan*/  FUNC17 (struct jme_softc*) ; 
 int /*<<< orphan*/  FUNC18 (struct jme_softc*) ; 
 int /*<<< orphan*/  FUNC19 (struct jme_softc*) ; 
 int /*<<< orphan*/  FUNC20 (struct jme_softc*) ; 
 int /*<<< orphan*/  FUNC21 (struct jme_softc*) ; 
 int /*<<< orphan*/  jme_tick ; 
 int /*<<< orphan*/  FUNC22 (struct jme_softc*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC27(void *arg, int pending)
{
	struct jme_softc *sc;
	struct mii_data *mii;
	struct ifnet *ifp;
	struct jme_txdesc *txd;
	bus_addr_t paddr;
	int i;

	sc = (struct jme_softc *)arg;

	FUNC5(sc);
	mii = FUNC14(sc->jme_miibus);
	ifp = sc->jme_ifp;
	if (mii == NULL || ifp == NULL ||
	    (ifp->if_drv_flags & IFF_DRV_RUNNING) == 0) {
		FUNC9(sc);
		return;
	}

	sc->jme_flags &= ~JME_FLAG_LINK;
	if ((mii->mii_media_status & IFM_AVALID) != 0) {
		switch (FUNC2(mii->mii_media_active)) {
		case IFM_10_T:
		case IFM_100_TX:
			sc->jme_flags |= JME_FLAG_LINK;
			break;
		case IFM_1000_T:
			if ((sc->jme_flags & JME_FLAG_FASTETH) != 0)
				break;
			sc->jme_flags |= JME_FLAG_LINK;
			break;
		default:
			break;
		}
	}

	/*
	 * Disabling Rx/Tx MACs have a side-effect of resetting
	 * JME_TXNDA/JME_RXNDA register to the first address of
	 * Tx/Rx descriptor address. So driver should reset its
	 * internal procucer/consumer pointer and reclaim any
	 * allocated resources. Note, just saving the value of
	 * JME_TXNDA and JME_RXNDA registers before stopping MAC
	 * and restoring JME_TXNDA/JME_RXNDA register is not
	 * sufficient to make sure correct MAC state because
	 * stopping MAC operation can take a while and hardware
	 * might have updated JME_TXNDA/JME_RXNDA registers
	 * during the stop operation.
	 */
	/* Block execution of task. */
	FUNC24(sc->jme_tq);
	/* Disable interrupts and stop driver. */
	FUNC1(sc, JME_INTR_MASK_CLR, JME_INTRS);
	ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
	FUNC13(&sc->jme_tick_ch);
	sc->jme_watchdog_timer = 0;

	/* Stop receiver/transmitter. */
	FUNC20(sc);
	FUNC21(sc);

	/* XXX Drain all queued tasks. */
	FUNC9(sc);
	FUNC25(sc->jme_tq, &sc->jme_int_task);
	FUNC5(sc);

	if (sc->jme_cdata.jme_rxhead != NULL)
		FUNC23(sc->jme_cdata.jme_rxhead);
	FUNC6(sc);
	FUNC22(sc);
	if (sc->jme_cdata.jme_tx_cnt != 0) {
		/* Remove queued packets for transmit. */
		for (i = 0; i < JME_TX_RING_CNT; i++) {
			txd = &sc->jme_cdata.jme_txdesc[i];
			if (txd->tx_m != NULL) {
				FUNC10(
				    sc->jme_cdata.jme_tx_tag,
				    txd->tx_dmamap,
				    BUS_DMASYNC_POSTWRITE);
				FUNC11(
				    sc->jme_cdata.jme_tx_tag,
				    txd->tx_dmamap);
				FUNC23(txd->tx_m);
				txd->tx_m = NULL;
				txd->tx_ndesc = 0;
				FUNC15(ifp, IFCOUNTER_OERRORS, 1);
			}
		}
	}

	/*
	 * Reuse configured Rx descriptors and reset
	 * producer/consumer index.
	 */
	sc->jme_cdata.jme_rx_cons = 0;
	sc->jme_morework = 0;
	FUNC17(sc);
	/* Initialize shadow status block. */
	FUNC16(sc);

	/* Program MAC with resolved speed/duplex/flow-control. */
	if ((sc->jme_flags & JME_FLAG_LINK) != 0) {
		FUNC18(sc);
		FUNC19(sc);

		FUNC1(sc, JME_RXCSR, sc->jme_rxcsr);
		FUNC1(sc, JME_TXCSR, sc->jme_txcsr);

		/* Set Tx ring address to the hardware. */
		paddr = FUNC8(sc, 0);
		FUNC1(sc, JME_TXDBA_HI, FUNC3(paddr));
		FUNC1(sc, JME_TXDBA_LO, FUNC4(paddr));

		/* Set Rx ring address to the hardware. */
		paddr = FUNC7(sc, 0);
		FUNC1(sc, JME_RXDBA_HI, FUNC3(paddr));
		FUNC1(sc, JME_RXDBA_LO, FUNC4(paddr));

		/* Restart receiver/transmitter. */
		FUNC1(sc, JME_RXCSR, sc->jme_rxcsr | RXCSR_RX_ENB |
		    RXCSR_RXQ_START);
		FUNC1(sc, JME_TXCSR, sc->jme_txcsr | TXCSR_TX_ENB);
		/* Lastly enable TX/RX clock. */
		if ((sc->jme_flags & JME_FLAG_TXCLK) != 0)
			FUNC1(sc, JME_GHC,
			    FUNC0(sc, JME_GHC) & ~GHC_TX_MAC_CLK_DIS);
		if ((sc->jme_flags & JME_FLAG_RXCLK) != 0)
			FUNC1(sc, JME_GPREG1,
			    FUNC0(sc, JME_GPREG1) & ~GPREG1_RX_MAC_CLK_DIS);
	}

	ifp->if_drv_flags |= IFF_DRV_RUNNING;
	ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
	FUNC12(&sc->jme_tick_ch, hz, jme_tick, sc);
	/* Unblock execution of task. */
	FUNC26(sc->jme_tq);
	/* Reenable interrupts. */
	FUNC1(sc, JME_INTR_MASK_SET, JME_INTRS);

	FUNC9(sc);
}