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
struct vte_txdesc {int tx_flags; } ;
struct TYPE_2__ {int vte_tx_cnt; int /*<<< orphan*/  vte_tx_ring_map; int /*<<< orphan*/  vte_tx_ring_tag; } ;
struct vte_softc {int vte_flags; int /*<<< orphan*/  vte_watchdog_timer; TYPE_1__ vte_cdata; struct ifnet* vte_ifp; } ;
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_snd; } ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct vte_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,struct mbuf*) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  TX_POLL_START ; 
 int VTE_FLAG_LINK ; 
 int VTE_TXMBUF ; 
 int /*<<< orphan*/  VTE_TX_POLL ; 
 int VTE_TX_RING_CNT ; 
 int /*<<< orphan*/  VTE_TX_TIMEOUT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*) ; 
 struct vte_txdesc* FUNC7 (struct vte_softc*,struct mbuf**) ; 

__attribute__((used)) static void
FUNC8(struct vte_softc *sc)
{
	struct ifnet *ifp;
	struct vte_txdesc *txd;
	struct mbuf *m_head;
	int enq;

	ifp = sc->vte_ifp;

	if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
	    IFF_DRV_RUNNING || (sc->vte_flags & VTE_FLAG_LINK) == 0)
		return;

	for (enq = 0; !FUNC3(&ifp->if_snd); ) {
		/* Reserve one free TX descriptor. */
		if (sc->vte_cdata.vte_tx_cnt >= VTE_TX_RING_CNT - 1) {
			ifp->if_drv_flags |= IFF_DRV_OACTIVE;
			break;
		}
		FUNC2(&ifp->if_snd, m_head);
		if (m_head == NULL)
			break;
		/*
		 * Pack the data into the transmit ring. If we
		 * don't have room, set the OACTIVE flag and wait
		 * for the NIC to drain the ring.
		 */
		if ((txd = FUNC7(sc, &m_head)) == NULL) {
			if (m_head != NULL)
				FUNC4(&ifp->if_snd, m_head);
			break;
		}

		enq++;
		/*
		 * If there's a BPF listener, bounce a copy of this frame
		 * to him.
		 */
		FUNC1(ifp, m_head);
		/* Free consumed TX frame. */
		if ((txd->tx_flags & VTE_TXMBUF) != 0)
			FUNC6(m_head);
	}

	if (enq > 0) {
		FUNC5(sc->vte_cdata.vte_tx_ring_tag,
		    sc->vte_cdata.vte_tx_ring_map, BUS_DMASYNC_PREREAD |
		    BUS_DMASYNC_PREWRITE);
		FUNC0(sc, VTE_TX_POLL, TX_POLL_START);
		sc->vte_watchdog_timer = VTE_TX_TIMEOUT;
	}
}