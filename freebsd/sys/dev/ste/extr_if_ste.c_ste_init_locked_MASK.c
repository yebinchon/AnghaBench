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
typedef  int uint8_t ;
struct TYPE_2__ {int /*<<< orphan*/  ste_rx_list_paddr; } ;
struct ste_softc {int ste_tx_thresh; int /*<<< orphan*/  ste_callout; int /*<<< orphan*/  ste_flags; TYPE_1__ ste_ldata; int /*<<< orphan*/  ste_dev; struct ifnet* ste_ifp; int /*<<< orphan*/  ste_miibus; } ;
struct mii_data {int dummy; } ;
struct ifnet {int if_drv_flags; int if_capenable; } ;

/* Variables and functions */
 int FUNC0 (struct ste_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ste_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ste_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ste_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ETHER_ADDR_LEN ; 
 int ETHER_MAX_LEN ; 
 int ETHER_VLAN_ENCAP_LEN ; 
 int IFCAP_POLLING ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int* FUNC4 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ste_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ STE_COUNTDOWN ; 
 int /*<<< orphan*/  STE_DMACTL ; 
 int STE_DMACTL_COUNTDOWN_MODE ; 
 int STE_DMACTL_COUNTDOWN_SPEED ; 
 int /*<<< orphan*/  STE_DMACTL_RXDMA_STALL ; 
 int /*<<< orphan*/  STE_DMACTL_RXDMA_UNSTALL ; 
 int /*<<< orphan*/  STE_DMACTL_TXDMA_STALL ; 
 int /*<<< orphan*/  STE_DMACTL_TXDMA_UNSTALL ; 
 int /*<<< orphan*/  STE_FLAG_LINK ; 
 scalar_t__ STE_IMR ; 
 int STE_INTRS ; 
 scalar_t__ STE_ISR ; 
 int /*<<< orphan*/  FUNC7 (struct ste_softc*) ; 
 scalar_t__ STE_MACCTL0 ; 
 scalar_t__ STE_MACCTL1 ; 
 int /*<<< orphan*/  STE_MACCTL1_RX_ENABLE ; 
 int /*<<< orphan*/  STE_MACCTL1_STATS_ENABLE ; 
 int /*<<< orphan*/  STE_MACCTL1_TX_ENABLE ; 
 scalar_t__ STE_MAX_FRAMELEN ; 
 int STE_PACKET_SIZE ; 
 scalar_t__ STE_PAR0 ; 
 int /*<<< orphan*/  STE_RX_DMALIST_PTR ; 
 int /*<<< orphan*/  STE_RX_DMAPOLL_PERIOD ; 
 int /*<<< orphan*/  FUNC8 (struct ste_softc*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ste_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STE_TX_DMABURST_THRESH ; 
 int /*<<< orphan*/  STE_TX_DMALIST_PTR ; 
 int /*<<< orphan*/  STE_TX_DMAPOLL_PERIOD ; 
 int /*<<< orphan*/  STE_TX_RECLAIM_THRESH ; 
 scalar_t__ STE_TX_STARTTHRESH ; 
 int STE_WAKEEVENT_LINKEVT_ENB ; 
 int STE_WAKEEVENT_MAGICPKT_ENB ; 
 int STE_WAKEEVENT_WAKEONLAN_ENB ; 
 int STE_WAKEEVENT_WAKEPKT_ENB ; 
 int /*<<< orphan*/  STE_WAKE_EVENT ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ste_softc*) ; 
 struct mii_data* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC13 (struct mii_data*) ; 
 scalar_t__ FUNC14 (struct ste_softc*) ; 
 int /*<<< orphan*/  FUNC15 (struct ste_softc*) ; 
 int /*<<< orphan*/  FUNC16 (struct ste_softc*) ; 
 int /*<<< orphan*/  FUNC17 (struct ste_softc*) ; 
 int /*<<< orphan*/  FUNC18 (struct ste_softc*) ; 
 int /*<<< orphan*/  FUNC19 (struct ste_softc*) ; 
 int /*<<< orphan*/  ste_tick ; 
 int /*<<< orphan*/  FUNC20 (struct ste_softc*) ; 

__attribute__((used)) static void
FUNC21(struct ste_softc *sc)
{
	struct ifnet *ifp;
	struct mii_data *mii;
	uint8_t val;
	int i;

	FUNC7(sc);
	ifp = sc->ste_ifp;
	mii = FUNC11(sc->ste_miibus);

	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
		return;

	FUNC19(sc);
	/* Reset the chip to a known state. */
	FUNC16(sc);

	/* Init our MAC address */
	for (i = 0; i < ETHER_ADDR_LEN; i += 2) {
		FUNC2(sc, STE_PAR0 + i,
		    ((FUNC4(sc->ste_ifp)[i] & 0xff) |
		     FUNC4(sc->ste_ifp)[i + 1] << 8));
	}

	/* Init RX list */
	if (FUNC14(sc) != 0) {
		FUNC12(sc->ste_dev,
		    "initialization failed: no memory for RX buffers\n");
		FUNC19(sc);
		return;
	}

	/* Set RX polling interval */
	FUNC1(sc, STE_RX_DMAPOLL_PERIOD, 64);

	/* Init TX descriptors */
	FUNC15(sc);

	/* Clear and disable WOL. */
	val = FUNC0(sc, STE_WAKE_EVENT);
	val &= ~(STE_WAKEEVENT_WAKEPKT_ENB | STE_WAKEEVENT_MAGICPKT_ENB |
	    STE_WAKEEVENT_LINKEVT_ENB | STE_WAKEEVENT_WAKEONLAN_ENB);
	FUNC1(sc, STE_WAKE_EVENT, val);

	/* Set the TX freethresh value */
	FUNC1(sc, STE_TX_DMABURST_THRESH, STE_PACKET_SIZE >> 8);

	/* Set the TX start threshold for best performance. */
	FUNC2(sc, STE_TX_STARTTHRESH, sc->ste_tx_thresh);

	/* Set the TX reclaim threshold. */
	FUNC1(sc, STE_TX_RECLAIM_THRESH, (STE_PACKET_SIZE >> 4));

	/* Accept VLAN length packets */
	FUNC2(sc, STE_MAX_FRAMELEN, ETHER_MAX_LEN + ETHER_VLAN_ENCAP_LEN);

	/* Set up the RX filter. */
	FUNC17(sc);

	/* Load the address of the RX list. */
	FUNC9(sc, STE_DMACTL, STE_DMACTL_RXDMA_STALL);
	FUNC20(sc);
	FUNC3(sc, STE_RX_DMALIST_PTR,
	    FUNC5(sc->ste_ldata.ste_rx_list_paddr));
	FUNC9(sc, STE_DMACTL, STE_DMACTL_RXDMA_UNSTALL);
	FUNC9(sc, STE_DMACTL, STE_DMACTL_RXDMA_UNSTALL);

	/* Set TX polling interval(defer until we TX first packet). */
	FUNC1(sc, STE_TX_DMAPOLL_PERIOD, 0);

	/* Load address of the TX list */
	FUNC9(sc, STE_DMACTL, STE_DMACTL_TXDMA_STALL);
	FUNC20(sc);
	FUNC3(sc, STE_TX_DMALIST_PTR, 0);
	FUNC9(sc, STE_DMACTL, STE_DMACTL_TXDMA_UNSTALL);
	FUNC9(sc, STE_DMACTL, STE_DMACTL_TXDMA_UNSTALL);
	FUNC20(sc);
	/* Select 3.2us timer. */
	FUNC6(sc, STE_DMACTL, STE_DMACTL_COUNTDOWN_SPEED |
	    STE_DMACTL_COUNTDOWN_MODE);

	/* Enable receiver and transmitter */
	FUNC2(sc, STE_MACCTL0, 0);
	FUNC2(sc, STE_MACCTL1, 0);
	FUNC8(sc, STE_MACCTL1, STE_MACCTL1_TX_ENABLE);
	FUNC8(sc, STE_MACCTL1, STE_MACCTL1_RX_ENABLE);

	/* Enable stats counters. */
	FUNC8(sc, STE_MACCTL1, STE_MACCTL1_STATS_ENABLE);
	/* Clear stats counters. */
	FUNC18(sc);

	FUNC2(sc, STE_COUNTDOWN, 0);
	FUNC2(sc, STE_ISR, 0xFFFF);
#ifdef DEVICE_POLLING
	/* Disable interrupts if we are polling. */
	if (ifp->if_capenable & IFCAP_POLLING)
		CSR_WRITE_2(sc, STE_IMR, 0);
	else
#endif
	/* Enable interrupts. */
	FUNC2(sc, STE_IMR, STE_INTRS);

	sc->ste_flags &= ~STE_FLAG_LINK;
	/* Switch to the current media. */
	FUNC13(mii);

	ifp->if_drv_flags |= IFF_DRV_RUNNING;
	ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

	FUNC10(&sc->ste_callout, hz, ste_tick, sc);
}