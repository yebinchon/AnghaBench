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
struct TYPE_2__ {int vte_tx_ring_paddr; int vte_rx_ring_paddr; } ;
struct vte_softc {int /*<<< orphan*/  vte_tick_ch; int /*<<< orphan*/  vte_flags; TYPE_1__ vte_cdata; struct ifnet* vte_ifp; int /*<<< orphan*/  vte_dev; } ;
struct ifnet {int if_drv_flags; } ;
typedef  int bus_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vte_softc*,int /*<<< orphan*/ ,int) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int* FUNC1 (struct ifnet*) ; 
 int MBCR_FIFO_XFER_LENGTH_16 ; 
 int MBCR_RX_FIFO_THRESH_16 ; 
 int MBCR_SDRAM_BUS_REQ_TIMER_DEFAULT ; 
 int MBCR_TX_FIFO_THRESH_64 ; 
 int MCR0_ACCPT_LONG_PKT ; 
 int MCR1_EXCESS_COL_RETRY_16 ; 
 int MCR1_PKT_LENGTH_1537 ; 
 int /*<<< orphan*/  VTE_FLAG_LINK ; 
 int VTE_INTRS ; 
 int /*<<< orphan*/  FUNC2 (struct vte_softc*) ; 
 int /*<<< orphan*/  VTE_MBCR ; 
 int /*<<< orphan*/  VTE_MCR0 ; 
 int /*<<< orphan*/  VTE_MCR1 ; 
 int /*<<< orphan*/  VTE_MECIER ; 
 int VTE_MECIER_INTRS ; 
 int /*<<< orphan*/  VTE_MID0H ; 
 int /*<<< orphan*/  VTE_MID0L ; 
 int /*<<< orphan*/  VTE_MID0M ; 
 int /*<<< orphan*/  VTE_MIER ; 
 int /*<<< orphan*/  VTE_MISR ; 
 int /*<<< orphan*/  VTE_MRBSR ; 
 int /*<<< orphan*/  VTE_MRDCR ; 
 int VTE_MRDCR_RESIDUE_MASK ; 
 int VTE_MRDCR_RX_PAUSE_THRESH_SHIFT ; 
 int /*<<< orphan*/  VTE_MRDSA0 ; 
 int /*<<< orphan*/  VTE_MRDSA1 ; 
 int /*<<< orphan*/  VTE_MRICR ; 
 int /*<<< orphan*/  VTE_MTDSA0 ; 
 int /*<<< orphan*/  VTE_MTDSA1 ; 
 int /*<<< orphan*/  VTE_MTICR ; 
 int VTE_RX_BUF_SIZE_MAX ; 
 int VTE_RX_RING_CNT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vte_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hz ; 
 scalar_t__ FUNC5 (struct vte_softc*) ; 
 scalar_t__ FUNC6 (struct vte_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC8 (struct vte_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct vte_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct vte_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct vte_softc*) ; 
 int /*<<< orphan*/  vte_tick ; 

__attribute__((used)) static void
FUNC12(struct vte_softc *sc)
{
	struct ifnet *ifp;
	bus_addr_t paddr;
	uint8_t *eaddr;

	FUNC2(sc);

	ifp = sc->vte_ifp;

	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
		return;
	/*
	 * Cancel any pending I/O.
	 */
	FUNC11(sc);
	/*
	 * Reset the chip to a known state.
	 */
	FUNC8(sc);

	/* Initialize RX descriptors. */
	if (FUNC5(sc) != 0) {
		FUNC4(sc->vte_dev, "no memory for RX buffers.\n");
		FUNC11(sc);
		return;
	}
	if (FUNC6(sc) != 0) {
		FUNC4(sc->vte_dev, "no memory for TX buffers.\n");
		FUNC11(sc);
		return;
	}

	/*
	 * Reprogram the station address.  Controller supports up
	 * to 4 different station addresses so driver programs the
	 * first station address as its own ethernet address and
	 * configure the remaining three addresses as perfect
	 * multicast addresses.
	 */
	eaddr = FUNC1(sc->vte_ifp);
	FUNC0(sc, VTE_MID0L, eaddr[1] << 8 | eaddr[0]);
	FUNC0(sc, VTE_MID0M, eaddr[3] << 8 | eaddr[2]);
	FUNC0(sc, VTE_MID0H, eaddr[5] << 8 | eaddr[4]);

	/* Set TX descriptor base addresses. */
	paddr = sc->vte_cdata.vte_tx_ring_paddr;
	FUNC0(sc, VTE_MTDSA1, paddr >> 16);
	FUNC0(sc, VTE_MTDSA0, paddr & 0xFFFF);
	/* Set RX descriptor base addresses. */
	paddr = sc->vte_cdata.vte_rx_ring_paddr;
	FUNC0(sc, VTE_MRDSA1, paddr >> 16);
	FUNC0(sc, VTE_MRDSA0, paddr & 0xFFFF);
	/*
	 * Initialize RX descriptor residue counter and set RX
	 * pause threshold to 20% of available RX descriptors.
	 * See comments on vte_rxeof() for details on flow control
	 * issues.
	 */
	FUNC0(sc, VTE_MRDCR, (VTE_RX_RING_CNT & VTE_MRDCR_RESIDUE_MASK) |
	    (((VTE_RX_RING_CNT * 2) / 10) << VTE_MRDCR_RX_PAUSE_THRESH_SHIFT));

	/*
	 * Always use maximum frame size that controller can
	 * support.  Otherwise received frames that has longer
	 * frame length than vte(4) MTU would be silently dropped
	 * in controller.  This would break path-MTU discovery as
	 * sender wouldn't get any responses from receiver. The
	 * RX buffer size should be multiple of 4.
	 * Note, jumbo frames are silently ignored by controller
	 * and even MAC counters do not detect them.
	 */
	FUNC0(sc, VTE_MRBSR, VTE_RX_BUF_SIZE_MAX);

	/* Configure FIFO. */
	FUNC0(sc, VTE_MBCR, MBCR_FIFO_XFER_LENGTH_16 |
	    MBCR_TX_FIFO_THRESH_64 | MBCR_RX_FIFO_THRESH_16 |
	    MBCR_SDRAM_BUS_REQ_TIMER_DEFAULT);

	/*
	 * Configure TX/RX MACs.  Actual resolved duplex and flow
	 * control configuration is done after detecting a valid
	 * link.  Note, we don't generate early interrupt here
	 * as well since FreeBSD does not have interrupt latency
	 * problems like Windows.
	 */
	FUNC0(sc, VTE_MCR0, MCR0_ACCPT_LONG_PKT);
	/*
	 * We manually keep track of PHY status changes to
	 * configure resolved duplex and flow control since only
	 * duplex configuration can be automatically reflected to
	 * MCR0.
	 */
	FUNC0(sc, VTE_MCR1, MCR1_PKT_LENGTH_1537 |
	    MCR1_EXCESS_COL_RETRY_16);

	/* Initialize RX filter. */
	FUNC9(sc);

	/* Disable TX/RX interrupt moderation control. */
	FUNC0(sc, VTE_MRICR, 0);
	FUNC0(sc, VTE_MTICR, 0);

	/* Enable MAC event counter interrupts. */
	FUNC0(sc, VTE_MECIER, VTE_MECIER_INTRS);
	/* Clear MAC statistics. */
	FUNC10(sc);

	/* Acknowledge all pending interrupts and clear it. */
	FUNC0(sc, VTE_MIER, VTE_INTRS);
	FUNC0(sc, VTE_MISR, 0);

	sc->vte_flags &= ~VTE_FLAG_LINK;
	/* Switch to the current media. */
	FUNC7(ifp);

	FUNC3(&sc->vte_tick_ch, hz, vte_tick, sc);

	ifp->if_drv_flags |= IFF_DRV_RUNNING;
	ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
}