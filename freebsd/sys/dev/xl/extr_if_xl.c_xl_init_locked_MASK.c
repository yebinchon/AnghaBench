#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int8_t ;
struct TYPE_6__ {TYPE_2__* xl_tx_chain; } ;
struct TYPE_4__ {int /*<<< orphan*/  xl_rx_dmaaddr; } ;
struct xl_softc {int xl_flags; scalar_t__ xl_type; int xl_tx_thresh; scalar_t__ xl_xcvr; int /*<<< orphan*/  xl_tick_callout; scalar_t__ xl_wdog_timer; int /*<<< orphan*/  xl_fhandle; int /*<<< orphan*/  xl_ftag; TYPE_3__ xl_cdata; TYPE_1__ xl_ldata; int /*<<< orphan*/  xl_dev; struct ifnet* xl_ifp; int /*<<< orphan*/ * xl_miibus; } ;
struct mii_data {int dummy; } ;
struct ifnet {int if_drv_flags; int if_capenable; } ;
struct TYPE_5__ {int /*<<< orphan*/  xl_phys; } ;

/* Variables and functions */
 int FUNC0 (struct xl_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct xl_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct xl_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct xl_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct xl_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int ETHER_ADDR_LEN ; 
 int IFCAP_POLLING ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int* FUNC6 (struct ifnet*) ; 
 int XL_CMD_COAX_START ; 
 int XL_CMD_COAX_STOP ; 
 int XL_CMD_DOWN_STALL ; 
 int XL_CMD_DOWN_UNSTALL ; 
 int XL_CMD_INTR_ACK ; 
 int XL_CMD_INTR_ENB ; 
 int XL_CMD_RX_ENABLE ; 
 int XL_CMD_RX_RESET ; 
 int XL_CMD_RX_SET_THRESH ; 
 int XL_CMD_SET_TX_RECLAIM ; 
 int XL_CMD_STATS_DISABLE ; 
 int XL_CMD_STATS_ENABLE ; 
 int XL_CMD_STAT_ENB ; 
 int XL_CMD_TX_ENABLE ; 
 int XL_CMD_TX_RESET ; 
 int XL_CMD_TX_SET_START ; 
 int XL_CMD_UP_STALL ; 
 int XL_CMD_UP_UNSTALL ; 
 scalar_t__ XL_COMMAND ; 
 int /*<<< orphan*/  XL_DMACTL ; 
 int /*<<< orphan*/  XL_DMACTL_UP_RX_EARLY ; 
 int /*<<< orphan*/  XL_DOWNLIST_PTR ; 
 scalar_t__ XL_DOWN_POLL ; 
 int XL_FLAG_FUNCREG ; 
 int XL_FLAG_WOL ; 
 int XL_INTRS ; 
 int /*<<< orphan*/  FUNC7 (struct xl_softc*) ; 
 int XL_MACCTRL_ALLOW_LARGE_PACK ; 
 int XL_NETDIAG_UPPER_BYTES_ENABLE ; 
 int XL_PACKET_SIZE ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ XL_TX_FREETHRESH ; 
 scalar_t__ XL_TYPE_905B ; 
 int /*<<< orphan*/  XL_UPLIST_PTR ; 
 scalar_t__ XL_W2_STATION_ADDR_LO ; 
 scalar_t__ XL_W2_STATION_MASK_LO ; 
 scalar_t__ XL_W3_MAC_CTRL ; 
 scalar_t__ XL_W3_MAXPKTSIZE ; 
 scalar_t__ XL_W4_NET_DIAG ; 
 scalar_t__ XL_W7_BM_PME ; 
 scalar_t__ XL_XCVR_COAX ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xl_softc*) ; 
 struct mii_data* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC13 (struct mii_data*) ; 
 int FUNC14 (struct xl_softc*) ; 
 int FUNC15 (struct xl_softc*) ; 
 int FUNC16 (struct xl_softc*) ; 
 int /*<<< orphan*/  FUNC17 (struct xl_softc*) ; 
 int /*<<< orphan*/  FUNC18 (struct xl_softc*) ; 
 int /*<<< orphan*/  FUNC19 (struct xl_softc*) ; 
 int /*<<< orphan*/  FUNC20 (struct xl_softc*) ; 
 int /*<<< orphan*/  xl_tick ; 
 int /*<<< orphan*/  FUNC21 (struct xl_softc*) ; 

__attribute__((used)) static void
FUNC22(struct xl_softc *sc)
{
	struct ifnet		*ifp = sc->xl_ifp;
	int			error, i;
	struct mii_data		*mii = NULL;

	FUNC7(sc);

	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
		return;
	/*
	 * Cancel pending I/O and free all RX/TX buffers.
	 */
	FUNC20(sc);

	/* Reset the chip to a known state. */
	FUNC17(sc);

	if (sc->xl_miibus == NULL) {
		FUNC3(sc, XL_COMMAND, XL_CMD_RX_RESET);
		FUNC21(sc);
	}
	FUNC3(sc, XL_COMMAND, XL_CMD_TX_RESET);
	FUNC21(sc);
	FUNC5(10000);

	if (sc->xl_miibus != NULL)
		mii = FUNC11(sc->xl_miibus);

	/*
	 * Clear WOL status and disable all WOL feature as WOL
	 * would interfere Rx operation under normal environments.
	 */
	if ((sc->xl_flags & XL_FLAG_WOL) != 0) {
		FUNC8(7);
		FUNC1(sc, XL_W7_BM_PME);
		FUNC3(sc, XL_W7_BM_PME, 0);
	}
	/* Init our MAC address */
	FUNC8(2);
	for (i = 0; i < ETHER_ADDR_LEN; i++) {
		FUNC2(sc, XL_W2_STATION_ADDR_LO + i,
				FUNC6(sc->xl_ifp)[i]);
	}

	/* Clear the station mask. */
	for (i = 0; i < 3; i++)
		FUNC3(sc, XL_W2_STATION_MASK_LO + (i * 2), 0);
#ifdef notdef
	/* Reset TX and RX. */
	CSR_WRITE_2(sc, XL_COMMAND, XL_CMD_RX_RESET);
	xl_wait(sc);
	CSR_WRITE_2(sc, XL_COMMAND, XL_CMD_TX_RESET);
	xl_wait(sc);
#endif
	/* Init circular RX list. */
	error = FUNC14(sc);
	if (error) {
		FUNC12(sc->xl_dev, "initialization of the rx ring failed (%d)\n",
		    error);
		FUNC20(sc);
		return;
	}

	/* Init TX descriptors. */
	if (sc->xl_type == XL_TYPE_905B)
		error = FUNC16(sc);
	else
		error = FUNC15(sc);
	if (error) {
		FUNC12(sc->xl_dev, "initialization of the tx ring failed (%d)\n",
		    error);
		FUNC20(sc);
		return;
	}

	/*
	 * Set the TX freethresh value.
	 * Note that this has no effect on 3c905B "cyclone"
	 * cards but is required for 3c900/3c905 "boomerang"
	 * cards in order to enable the download engine.
	 */
	FUNC2(sc, XL_TX_FREETHRESH, XL_PACKET_SIZE >> 8);

	/* Set the TX start threshold for best performance. */
	FUNC3(sc, XL_COMMAND, XL_CMD_TX_SET_START|sc->xl_tx_thresh);

	/*
	 * If this is a 3c905B, also set the tx reclaim threshold.
	 * This helps cut down on the number of tx reclaim errors
	 * that could happen on a busy network. The chip multiplies
	 * the register value by 16 to obtain the actual threshold
	 * in bytes, so we divide by 16 when setting the value here.
	 * The existing threshold value can be examined by reading
	 * the register at offset 9 in window 5.
	 */
	if (sc->xl_type == XL_TYPE_905B) {
		FUNC3(sc, XL_COMMAND,
		    XL_CMD_SET_TX_RECLAIM|(XL_PACKET_SIZE >> 4));
	}

	/* Set RX filter bits. */
	FUNC18(sc);

	/*
	 * Load the address of the RX list. We have to
	 * stall the upload engine before we can manipulate
	 * the uplist pointer register, then unstall it when
	 * we're finished. We also have to wait for the
	 * stall command to complete before proceeding.
	 * Note that we have to do this after any RX resets
	 * have completed since the uplist register is cleared
	 * by a reset.
	 */
	FUNC3(sc, XL_COMMAND, XL_CMD_UP_STALL);
	FUNC21(sc);
	FUNC4(sc, XL_UPLIST_PTR, sc->xl_ldata.xl_rx_dmaaddr);
	FUNC3(sc, XL_COMMAND, XL_CMD_UP_UNSTALL);
	FUNC21(sc);

	if (sc->xl_type == XL_TYPE_905B) {
		/* Set polling interval */
		FUNC2(sc, XL_DOWN_POLL, 64);
		/* Load the address of the TX list */
		FUNC3(sc, XL_COMMAND, XL_CMD_DOWN_STALL);
		FUNC21(sc);
		FUNC4(sc, XL_DOWNLIST_PTR,
		    sc->xl_cdata.xl_tx_chain[0].xl_phys);
		FUNC3(sc, XL_COMMAND, XL_CMD_DOWN_UNSTALL);
		FUNC21(sc);
	}

	/*
	 * If the coax transceiver is on, make sure to enable
	 * the DC-DC converter.
	 */
	FUNC8(3);
	if (sc->xl_xcvr == XL_XCVR_COAX)
		FUNC3(sc, XL_COMMAND, XL_CMD_COAX_START);
	else
		FUNC3(sc, XL_COMMAND, XL_CMD_COAX_STOP);

	/*
	 * increase packet size to allow reception of 802.1q or ISL packets.
	 * For the 3c90x chip, set the 'allow large packets' bit in the MAC
	 * control register. For 3c90xB/C chips, use the RX packet size
	 * register.
	 */

	if (sc->xl_type == XL_TYPE_905B)
		FUNC3(sc, XL_W3_MAXPKTSIZE, XL_PACKET_SIZE);
	else {
		u_int8_t macctl;
		macctl = FUNC0(sc, XL_W3_MAC_CTRL);
		macctl |= XL_MACCTRL_ALLOW_LARGE_PACK;
		FUNC2(sc, XL_W3_MAC_CTRL, macctl);
	}

	/* Clear out the stats counters. */
	FUNC3(sc, XL_COMMAND, XL_CMD_STATS_DISABLE);
	FUNC19(sc);
	FUNC8(4);
	FUNC3(sc, XL_W4_NET_DIAG, XL_NETDIAG_UPPER_BYTES_ENABLE);
	FUNC3(sc, XL_COMMAND, XL_CMD_STATS_ENABLE);

	/*
	 * Enable interrupts.
	 */
	FUNC3(sc, XL_COMMAND, XL_CMD_INTR_ACK|0xFF);
	FUNC3(sc, XL_COMMAND, XL_CMD_STAT_ENB|XL_INTRS);
#ifdef DEVICE_POLLING
	/* Disable interrupts if we are polling. */
	if (ifp->if_capenable & IFCAP_POLLING)
		CSR_WRITE_2(sc, XL_COMMAND, XL_CMD_INTR_ENB|0);
	else
#endif
	FUNC3(sc, XL_COMMAND, XL_CMD_INTR_ENB|XL_INTRS);
	if (sc->xl_flags & XL_FLAG_FUNCREG)
	    FUNC9(sc->xl_ftag, sc->xl_fhandle, 4, 0x8000);

	/* Set the RX early threshold */
	FUNC3(sc, XL_COMMAND, XL_CMD_RX_SET_THRESH|(XL_PACKET_SIZE >>2));
	FUNC4(sc, XL_DMACTL, XL_DMACTL_UP_RX_EARLY);

	/* Enable receiver and transmitter. */
	FUNC3(sc, XL_COMMAND, XL_CMD_TX_ENABLE);
	FUNC21(sc);
	FUNC3(sc, XL_COMMAND, XL_CMD_RX_ENABLE);
	FUNC21(sc);

	/* XXX Downcall to miibus. */
	if (mii != NULL)
		FUNC13(mii);

	/* Select window 7 for normal operations. */
	FUNC8(7);

	ifp->if_drv_flags |= IFF_DRV_RUNNING;
	ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

	sc->xl_wdog_timer = 0;
	FUNC10(&sc->xl_tick_callout, hz, xl_tick, sc);
}