#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  unsigned int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct stge_softc {int sc_txthresh; int sc_IntEnable; unsigned int sc_DMACtrl; int sc_if_framesize; int sc_rev; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_tick_ch; scalar_t__ sc_link; int /*<<< orphan*/  sc_rxint_dmawait; int /*<<< orphan*/  sc_rxint_nframe; int /*<<< orphan*/  sc_miibus; struct ifnet* sc_ifp; } ;
struct mii_data {int dummy; } ;
struct ifnet {int if_drv_flags; int if_capenable; int if_mtu; } ;

/* Variables and functions */
 int FUNC0 (struct stge_softc*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct stge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct stge_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct stge_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct stge_softc*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC5 (int) ; 
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int ETHER_CRC_LEN ; 
 int ETHER_HDR_LEN ; 
 int IFCAP_POLLING ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*) ; 
 int IS_HostError ; 
 int IS_RFDListEnd ; 
 int IS_RxDMAComplete ; 
 int IS_TxComplete ; 
 int IS_TxDMAComplete ; 
 int /*<<< orphan*/  MC_IFS96bit ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned int MC_MASK ; 
 unsigned int MC_RxEnable ; 
 unsigned int MC_StatisticsEnable ; 
 unsigned int MC_TxEnable ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC10 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STGE_DMACtrl ; 
 int /*<<< orphan*/  STGE_DebugCtrl ; 
 int /*<<< orphan*/  STGE_FlowOffThresh ; 
 int /*<<< orphan*/  STGE_FlowOnTresh ; 
 int /*<<< orphan*/  STGE_IntEnable ; 
 int /*<<< orphan*/  FUNC12 (struct stge_softc*) ; 
 int /*<<< orphan*/  STGE_MACCtrl ; 
 int /*<<< orphan*/  STGE_MaxFrameSize ; 
 int /*<<< orphan*/  STGE_RESET_FULL ; 
 int /*<<< orphan*/  STGE_RFDListPtrHi ; 
 int /*<<< orphan*/  STGE_RFDListPtrLo ; 
 int /*<<< orphan*/  STGE_RMONStatisticsMask ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct stge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STGE_RxDMABurstThresh ; 
 int /*<<< orphan*/  STGE_RxDMAIntCtrl ; 
 int /*<<< orphan*/  STGE_RxDMAPollPeriod ; 
 int /*<<< orphan*/  STGE_RxDMAUrgentThresh ; 
 int /*<<< orphan*/  STGE_RxEarlyThresh ; 
 int /*<<< orphan*/  STGE_StationAddress0 ; 
 int /*<<< orphan*/  STGE_StationAddress1 ; 
 int /*<<< orphan*/  STGE_StationAddress2 ; 
 int /*<<< orphan*/  STGE_StatisticsMask ; 
 int /*<<< orphan*/  STGE_TFDListPtrHi ; 
 int /*<<< orphan*/  STGE_TFDListPtrLo ; 
 int /*<<< orphan*/  FUNC15 (struct stge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STGE_TxDMABurstThresh ; 
 int /*<<< orphan*/  STGE_TxDMAPollPeriod ; 
 int /*<<< orphan*/  STGE_TxDMAUrgentThresh ; 
 int /*<<< orphan*/  STGE_TxStartThresh ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct stge_softc*) ; 
 struct mii_data* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC21 (struct mii_data*) ; 
 int FUNC22 (struct stge_softc*) ; 
 int /*<<< orphan*/  FUNC23 (struct stge_softc*) ; 
 int /*<<< orphan*/  FUNC24 (struct stge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct stge_softc*) ; 
 int /*<<< orphan*/  FUNC26 (struct stge_softc*) ; 
 int /*<<< orphan*/  FUNC27 (struct stge_softc*) ; 
 int /*<<< orphan*/  FUNC28 (struct stge_softc*) ; 
 int /*<<< orphan*/  FUNC29 (struct stge_softc*) ; 
 int /*<<< orphan*/  stge_tick ; 
 int /*<<< orphan*/  FUNC30 (struct stge_softc*) ; 

__attribute__((used)) static void
FUNC31(struct stge_softc *sc)
{
	struct ifnet *ifp;
	struct mii_data *mii;
	uint16_t eaddr[3];
	uint32_t v;
	int error;

	FUNC12(sc);

	ifp = sc->sc_ifp;
	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
		return;
	mii = FUNC18(sc->sc_miibus);

	/*
	 * Cancel any pending I/O.
	 */
	FUNC29(sc);

	/*
	 * Reset the chip to a known state.
	 */
	FUNC24(sc, STGE_RESET_FULL);

	/* Init descriptors. */
	error = FUNC22(sc);
        if (error != 0) {
                FUNC19(sc->sc_dev,
                    "initialization failed: no memory for rx buffers\n");
                FUNC29(sc);
		goto out;
        }
	FUNC23(sc);

	/* Set the station address. */
	FUNC16(FUNC6(ifp), eaddr, ETHER_ADDR_LEN);
	FUNC3(sc, STGE_StationAddress0, FUNC20(eaddr[0]));
	FUNC3(sc, STGE_StationAddress1, FUNC20(eaddr[1]));
	FUNC3(sc, STGE_StationAddress2, FUNC20(eaddr[2]));

	/*
	 * Set the statistics masks.  Disable all the RMON stats,
	 * and disable selected stats in the non-RMON stats registers.
	 */
	FUNC4(sc, STGE_RMONStatisticsMask, 0xffffffff);
	FUNC4(sc, STGE_StatisticsMask,
	    (1U << 1) | (1U << 2) | (1U << 3) | (1U << 4) | (1U << 5) |
	    (1U << 6) | (1U << 7) | (1U << 8) | (1U << 9) | (1U << 10) |
	    (1U << 13) | (1U << 14) | (1U << 15) | (1U << 19) | (1U << 20) |
	    (1U << 21));

	/* Set up the receive filter. */
	FUNC25(sc);
	/* Program multicast filter. */
	FUNC26(sc);

	/*
	 * Give the transmit and receive ring to the chip.
	 */
	FUNC4(sc, STGE_TFDListPtrHi,
	    FUNC10(FUNC15(sc, 0)));
	FUNC4(sc, STGE_TFDListPtrLo,
	    FUNC11(FUNC15(sc, 0)));

	FUNC4(sc, STGE_RFDListPtrHi,
	    FUNC10(FUNC14(sc, 0)));
	FUNC4(sc, STGE_RFDListPtrLo,
	    FUNC11(FUNC14(sc, 0)));

	/*
	 * Initialize the Tx auto-poll period.  It's OK to make this number
	 * large (255 is the max, but we use 127) -- we explicitly kick the
	 * transmit engine when there's actually a packet.
	 */
	FUNC2(sc, STGE_TxDMAPollPeriod, 127);

	/* ..and the Rx auto-poll period. */
	FUNC2(sc, STGE_RxDMAPollPeriod, 1);

	/* Initialize the Tx start threshold. */
	FUNC3(sc, STGE_TxStartThresh, sc->sc_txthresh);

	/* Rx DMA thresholds, from Linux */
	FUNC2(sc, STGE_RxDMABurstThresh, 0x30);
	FUNC2(sc, STGE_RxDMAUrgentThresh, 0x30);

	/* Rx early threhold, from Linux */
	FUNC3(sc, STGE_RxEarlyThresh, 0x7ff);

	/* Tx DMA thresholds, from Linux */
	FUNC2(sc, STGE_TxDMABurstThresh, 0x30);
	FUNC2(sc, STGE_TxDMAUrgentThresh, 0x04);

	/*
	 * Initialize the Rx DMA interrupt control register.  We
	 * request an interrupt after every incoming packet, but
	 * defer it for sc_rxint_dmawait us. When the number of
	 * interrupts pending reaches STGE_RXINT_NFRAME, we stop
	 * deferring the interrupt, and signal it immediately.
	 */
	FUNC4(sc, STGE_RxDMAIntCtrl,
	    FUNC9(sc->sc_rxint_nframe) |
	    FUNC8(FUNC13(sc->sc_rxint_dmawait)));

	/*
	 * Initialize the interrupt mask.
	 */
	sc->sc_IntEnable = IS_HostError | IS_TxComplete |
	    IS_TxDMAComplete | IS_RxDMAComplete | IS_RFDListEnd;
#ifdef DEVICE_POLLING
	/* Disable interrupts if we are polling. */
	if ((ifp->if_capenable & IFCAP_POLLING) != 0)
		CSR_WRITE_2(sc, STGE_IntEnable, 0);
	else
#endif
	FUNC3(sc, STGE_IntEnable, sc->sc_IntEnable);

	/*
	 * Configure the DMA engine.
	 * XXX Should auto-tune TxBurstLimit.
	 */
	FUNC4(sc, STGE_DMACtrl, sc->sc_DMACtrl | FUNC5(3));

	/*
	 * Send a PAUSE frame when we reach 29,696 bytes in the Rx
	 * FIFO, and send an un-PAUSE frame when we reach 3056 bytes
	 * in the Rx FIFO.
	 */
	FUNC3(sc, STGE_FlowOnTresh, 29696 / 16);
	FUNC3(sc, STGE_FlowOffThresh, 3056 / 16);

	/*
	 * Set the maximum frame size.
	 */
	sc->sc_if_framesize = ifp->if_mtu + ETHER_HDR_LEN + ETHER_CRC_LEN;
	FUNC3(sc, STGE_MaxFrameSize, sc->sc_if_framesize);

	/*
	 * Initialize MacCtrl -- do it before setting the media,
	 * as setting the media will actually program the register.
	 *
	 * Note: We have to poke the IFS value before poking
	 * anything else.
	 */
	/* Tx/Rx MAC should be disabled before programming IFS.*/
	FUNC4(sc, STGE_MACCtrl, FUNC7(MC_IFS96bit));

	FUNC30(sc);

	if (sc->sc_rev >= 6) {		/* >= B.2 */
		/* Multi-frag frame bug work-around. */
		FUNC3(sc, STGE_DebugCtrl,
		    FUNC0(sc, STGE_DebugCtrl) | 0x0200);

		/* Tx Poll Now bug work-around. */
		FUNC3(sc, STGE_DebugCtrl,
		    FUNC0(sc, STGE_DebugCtrl) | 0x0010);
		/* Tx Poll Now bug work-around. */
		FUNC3(sc, STGE_DebugCtrl,
		    FUNC0(sc, STGE_DebugCtrl) | 0x0020);
	}

	v = FUNC1(sc, STGE_MACCtrl) & MC_MASK;
	v |= MC_StatisticsEnable | MC_TxEnable | MC_RxEnable;
	FUNC4(sc, STGE_MACCtrl, v);
	/*
	 * It seems that transmitting frames without checking the state of
	 * Rx/Tx MAC wedge the hardware.
	 */
	FUNC28(sc);
	FUNC27(sc);

	sc->sc_link = 0;
	/*
	 * Set the current media.
	 */
	FUNC21(mii);

	/*
	 * Start the one second MII clock.
	 */
	FUNC17(&sc->sc_tick_ch, hz, stge_tick, sc);

	/*
	 * ...all done!
	 */
	ifp->if_drv_flags |= IFF_DRV_RUNNING;
	ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

 out:
	if (error != 0)
		FUNC19(sc->sc_dev, "interface not running\n");
}