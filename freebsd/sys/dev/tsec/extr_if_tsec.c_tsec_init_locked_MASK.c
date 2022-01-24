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
struct tsec_softc {int tsec_tx_raddr; int tsec_rx_raddr; int /*<<< orphan*/  tsec_callout; scalar_t__ tsec_watchdog; int /*<<< orphan*/  tsec_if_flags; scalar_t__ is_etsec; int /*<<< orphan*/  tsec_rx_dmap; int /*<<< orphan*/  tsec_rx_dtag; TYPE_1__* rx_data; int /*<<< orphan*/  tsec_tx_dmap; int /*<<< orphan*/  tsec_tx_dtag; int /*<<< orphan*/  tsec_mii; struct ifnet* tsec_ifp; struct tsec_desc* tsec_rx_vaddr; struct tsec_desc* tsec_tx_vaddr; } ;
struct tsec_desc {int flags; scalar_t__ length; scalar_t__ bufptr; } ;
struct ifnet {int if_drv_flags; int if_capenable; int /*<<< orphan*/  if_flags; int /*<<< orphan*/  if_mtu; } ;
struct TYPE_2__ {scalar_t__ paddr; } ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int IFCAP_POLLING ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int MCLBYTES ; 
 int TSEC_ATTR_RBDSEN ; 
 int TSEC_ATTR_RDSEN ; 
 int TSEC_ECNTRL_R100M ; 
 int TSEC_ECNTRL_SGMIIM ; 
 int TSEC_ECNTRL_STEN ; 
 int TSEC_ECNTRL_TBIM ; 
 int TSEC_FIFO_PAUSE_CTRL_EN ; 
 int /*<<< orphan*/  FUNC0 (struct tsec_softc*) ; 
 int TSEC_MACCFG1_RX_EN ; 
 int TSEC_MACCFG1_TX_EN ; 
 int TSEC_MACCFG2_FULLDUPLEX ; 
 int TSEC_MACCFG2_GMII ; 
 int TSEC_MACCFG2_PADCRC ; 
 int TSEC_MACCFG2_PRECNT ; 
 int /*<<< orphan*/  TSEC_MIIMCFG_CLKDIV28 ; 
 int /*<<< orphan*/  TSEC_MIIMCFG_RESETMGMT ; 
 int /*<<< orphan*/  TSEC_MIIMIND_BUSY ; 
 int TSEC_MIN_FRAME_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct tsec_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct tsec_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct tsec_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct tsec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TSEC_REG_ATTR ; 
 int /*<<< orphan*/  TSEC_REG_ATTRELI ; 
 int /*<<< orphan*/  TSEC_REG_ECNTRL ; 
 int /*<<< orphan*/  TSEC_REG_FIFO_PAUSE_CTRL ; 
 int /*<<< orphan*/  TSEC_REG_GADDR0 ; 
 int /*<<< orphan*/  TSEC_REG_GADDR1 ; 
 int /*<<< orphan*/  TSEC_REG_GADDR2 ; 
 int /*<<< orphan*/  TSEC_REG_GADDR3 ; 
 int /*<<< orphan*/  TSEC_REG_GADDR4 ; 
 int /*<<< orphan*/  TSEC_REG_GADDR5 ; 
 int /*<<< orphan*/  TSEC_REG_GADDR6 ; 
 int /*<<< orphan*/  TSEC_REG_GADDR7 ; 
 int /*<<< orphan*/  TSEC_REG_IADDR0 ; 
 int /*<<< orphan*/  TSEC_REG_IADDR1 ; 
 int /*<<< orphan*/  TSEC_REG_IADDR2 ; 
 int /*<<< orphan*/  TSEC_REG_IADDR3 ; 
 int /*<<< orphan*/  TSEC_REG_IADDR4 ; 
 int /*<<< orphan*/  TSEC_REG_IADDR5 ; 
 int /*<<< orphan*/  TSEC_REG_IADDR6 ; 
 int /*<<< orphan*/  TSEC_REG_IADDR7 ; 
 int /*<<< orphan*/  TSEC_REG_ID2 ; 
 int /*<<< orphan*/  TSEC_REG_IEVENT ; 
 int /*<<< orphan*/  TSEC_REG_MACCFG1 ; 
 int /*<<< orphan*/  TSEC_REG_MACCFG2 ; 
 int /*<<< orphan*/  TSEC_REG_MIIMCFG ; 
 int /*<<< orphan*/  TSEC_REG_MINFLR ; 
 int /*<<< orphan*/  TSEC_REG_MON_CAM1 ; 
 int /*<<< orphan*/  TSEC_REG_MON_CAM2 ; 
 int /*<<< orphan*/  TSEC_REG_MON_TLCL ; 
 int /*<<< orphan*/  TSEC_REG_MON_TMCL ; 
 int /*<<< orphan*/  TSEC_REG_MON_TNCL ; 
 int /*<<< orphan*/  TSEC_REG_MON_TSCL ; 
 int /*<<< orphan*/  TSEC_REG_MON_TXCL ; 
 int /*<<< orphan*/  TSEC_REG_MRBLR ; 
 int /*<<< orphan*/  TSEC_REG_RBASE ; 
 int /*<<< orphan*/  TSEC_REG_RCTRL ; 
 int /*<<< orphan*/  TSEC_REG_TBASE ; 
 int /*<<< orphan*/  TSEC_REG_TBIPA ; 
 int TSEC_RXBD_E ; 
 int TSEC_RXBD_I ; 
 int TSEC_RXBD_W ; 
 int TSEC_RX_NUM_DESC ; 
 int TSEC_TXBD_W ; 
 int TSEC_TX_NUM_DESC ; 
 int /*<<< orphan*/  FUNC5 (struct tsec_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct tsec_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tsec_softc*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct tsec_softc*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct tsec_softc*,int) ; 
 int FUNC13 (struct tsec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct tsec_softc*) ; 
 int /*<<< orphan*/  FUNC15 (struct tsec_softc*) ; 
 int /*<<< orphan*/  FUNC16 (struct tsec_softc*) ; 
 int /*<<< orphan*/  FUNC17 (struct tsec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct tsec_softc*) ; 
 int /*<<< orphan*/  FUNC19 (struct tsec_softc*) ; 
 int /*<<< orphan*/  tsec_tick ; 

__attribute__((used)) static void
FUNC20(struct tsec_softc *sc)
{
	struct tsec_desc *tx_desc = sc->tsec_tx_vaddr;
	struct tsec_desc *rx_desc = sc->tsec_rx_vaddr;
	struct ifnet *ifp = sc->tsec_ifp;
	uint32_t val, i;
	int timeout;

	if (ifp->if_drv_flags & IFF_DRV_RUNNING)
		return;

	FUNC0(sc);
	FUNC19(sc);

	/*
	 * These steps are according to the MPC8555E PowerQUICCIII RM:
	 * 14.7 Initialization/Application Information
	 */

	/* Step 1: soft reset MAC */
	FUNC15(sc);

	/* Step 2: Initialize MACCFG2 */
	FUNC6(sc, TSEC_REG_MACCFG2,
	    TSEC_MACCFG2_FULLDUPLEX |	/* Full Duplex = 1 */
	    TSEC_MACCFG2_PADCRC |	/* PAD/CRC append */
	    TSEC_MACCFG2_GMII |		/* I/F Mode bit */
	    TSEC_MACCFG2_PRECNT		/* Preamble count = 7 */
	);

	/* Step 3: Initialize ECNTRL
	 * While the documentation states that R100M is ignored if RPM is
	 * not set, it does seem to be needed to get the orange boxes to
	 * work (which have a Marvell 88E1111 PHY). Go figure.
	 */

	/*
	 * XXX kludge - use circumstancial evidence to program ECNTRL
	 * correctly. Ideally we need some board information to guide
	 * us here.
	 */
	i = FUNC4(sc, TSEC_REG_ID2);
	val = (i & 0xffff)
	    ? (TSEC_ECNTRL_TBIM | TSEC_ECNTRL_SGMIIM)	/* Sumatra */
	    : TSEC_ECNTRL_R100M;			/* Orange + CDS */
	FUNC6(sc, TSEC_REG_ECNTRL, TSEC_ECNTRL_STEN | val);

	/* Step 4: Initialize MAC station address */
	FUNC16(sc);

	/*
	 * Step 5: Assign a Physical address to the TBI so as to not conflict
	 * with the external PHY physical address
	 */
	FUNC6(sc, TSEC_REG_TBIPA, 5);

	FUNC1(sc);

	/* Step 6: Reset the management interface */
	FUNC3(sc, TSEC_REG_MIIMCFG, TSEC_MIIMCFG_RESETMGMT);

	/* Step 7: Setup the MII Mgmt clock speed */
	FUNC3(sc, TSEC_REG_MIIMCFG, TSEC_MIIMCFG_CLKDIV28);

	/* Step 8: Read MII Mgmt indicator register and check for Busy = 0 */
	timeout = FUNC13(sc, TSEC_MIIMIND_BUSY);

	FUNC2(sc);
	if (timeout) {
		FUNC9(ifp, "tsec_init_locked(): Mgmt busy timeout\n");
		return;
	}

	/* Step 9: Setup the MII Mgmt */
	FUNC10(sc->tsec_mii);

	/* Step 10: Clear IEVENT register */
	FUNC6(sc, TSEC_REG_IEVENT, 0xffffffff);

	/* Step 11: Enable interrupts */
#ifdef DEVICE_POLLING
	/*
	 * ...only if polling is not turned on. Disable interrupts explicitly
	 * if polling is enabled.
	 */
	if (ifp->if_capenable & IFCAP_POLLING )
		tsec_intrs_ctl(sc, 0);
	else
#endif /* DEVICE_POLLING */
	FUNC12(sc, 1);

	/* Step 12: Initialize IADDRn */
	FUNC6(sc, TSEC_REG_IADDR0, 0);
	FUNC6(sc, TSEC_REG_IADDR1, 0);
	FUNC6(sc, TSEC_REG_IADDR2, 0);
	FUNC6(sc, TSEC_REG_IADDR3, 0);
	FUNC6(sc, TSEC_REG_IADDR4, 0);
	FUNC6(sc, TSEC_REG_IADDR5, 0);
	FUNC6(sc, TSEC_REG_IADDR6, 0);
	FUNC6(sc, TSEC_REG_IADDR7, 0);

	/* Step 13: Initialize GADDRn */
	FUNC6(sc, TSEC_REG_GADDR0, 0);
	FUNC6(sc, TSEC_REG_GADDR1, 0);
	FUNC6(sc, TSEC_REG_GADDR2, 0);
	FUNC6(sc, TSEC_REG_GADDR3, 0);
	FUNC6(sc, TSEC_REG_GADDR4, 0);
	FUNC6(sc, TSEC_REG_GADDR5, 0);
	FUNC6(sc, TSEC_REG_GADDR6, 0);
	FUNC6(sc, TSEC_REG_GADDR7, 0);

	/* Step 14: Initialize RCTRL */
	FUNC6(sc, TSEC_REG_RCTRL, 0);

	/* Step 15: Initialize DMACTRL */
	FUNC11(sc, 1);

	/* Step 16: Initialize FIFO_PAUSE_CTRL */
	FUNC6(sc, TSEC_REG_FIFO_PAUSE_CTRL, TSEC_FIFO_PAUSE_CTRL_EN);

	/*
	 * Step 17: Initialize transmit/receive descriptor rings.
	 * Initialize TBASE and RBASE.
	 */
	FUNC6(sc, TSEC_REG_TBASE, sc->tsec_tx_raddr);
	FUNC6(sc, TSEC_REG_RBASE, sc->tsec_rx_raddr);

	for (i = 0; i < TSEC_TX_NUM_DESC; i++) {
		tx_desc[i].bufptr = 0;
		tx_desc[i].length = 0;
		tx_desc[i].flags = ((i == TSEC_TX_NUM_DESC - 1) ?
		    TSEC_TXBD_W : 0);
	}
	FUNC7(sc->tsec_tx_dtag, sc->tsec_tx_dmap,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

	for (i = 0; i < TSEC_RX_NUM_DESC; i++) {
		rx_desc[i].bufptr = sc->rx_data[i].paddr;
		rx_desc[i].length = 0;
		rx_desc[i].flags = TSEC_RXBD_E | TSEC_RXBD_I |
		    ((i == TSEC_RX_NUM_DESC - 1) ? TSEC_RXBD_W : 0);
	}
	FUNC7(sc->tsec_rx_dtag, sc->tsec_rx_dmap,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

	/* Step 18: Initialize the maximum receive buffer length */
	FUNC6(sc, TSEC_REG_MRBLR, MCLBYTES);

	/* Step 19: Configure ethernet frame sizes */
	FUNC6(sc, TSEC_REG_MINFLR, TSEC_MIN_FRAME_SIZE);
	FUNC17(sc, ifp->if_mtu);

	/* Step 20: Enable Rx and RxBD sdata snooping */
	FUNC6(sc, TSEC_REG_ATTR, TSEC_ATTR_RDSEN | TSEC_ATTR_RBDSEN);
	FUNC6(sc, TSEC_REG_ATTRELI, 0);

	/* Step 21: Reset collision counters in hardware */
	FUNC6(sc, TSEC_REG_MON_TSCL, 0);
	FUNC6(sc, TSEC_REG_MON_TMCL, 0);
	FUNC6(sc, TSEC_REG_MON_TLCL, 0);
	FUNC6(sc, TSEC_REG_MON_TXCL, 0);
	FUNC6(sc, TSEC_REG_MON_TNCL, 0);

	/* Step 22: Mask all CAM interrupts */
	FUNC6(sc, TSEC_REG_MON_CAM1, 0xffffffff);
	FUNC6(sc, TSEC_REG_MON_CAM2, 0xffffffff);

	/* Step 23: Enable Rx and Tx */
	val = FUNC4(sc, TSEC_REG_MACCFG1);
	val |= (TSEC_MACCFG1_RX_EN | TSEC_MACCFG1_TX_EN);
	FUNC6(sc, TSEC_REG_MACCFG1, val);

	/* Step 24: Reset TSEC counters for Tx and Rx rings */
	FUNC5(sc);

	/* Step 25: Setup TCP/IP Off-Load engine */
	if (sc->is_etsec)
		FUNC14(sc);

	/* Step 26: Setup multicast filters */
	FUNC18(sc);
	
	/* Step 27: Activate network interface */
	ifp->if_drv_flags |= IFF_DRV_RUNNING;
	ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
	sc->tsec_if_flags = ifp->if_flags;
	sc->tsec_watchdog = 0;

	/* Schedule watchdog timeout */
	FUNC8(&sc->tsec_callout, hz, tsec_tick, sc);
}