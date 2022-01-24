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
struct TYPE_2__ {int nge_tx_cnt; int /*<<< orphan*/  nge_tx_ring_map; int /*<<< orphan*/  nge_tx_ring_tag; } ;
struct nge_softc {int nge_flags; int nge_watchdog_timer; TYPE_1__ nge_cdata; } ;
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_snd; struct nge_softc* if_softc; } ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct mbuf*) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  NGE_CSR ; 
 int /*<<< orphan*/  NGE_CSR_TX_ENABLE ; 
 int NGE_FLAG_LINK ; 
 int /*<<< orphan*/  FUNC4 (struct nge_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct nge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int NGE_TX_RING_CNT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct nge_softc*,struct mbuf**) ; 

__attribute__((used)) static void
FUNC8(struct ifnet *ifp)
{
	struct nge_softc *sc;
	struct mbuf *m_head;
	int enq;

	sc = ifp->if_softc;

	FUNC4(sc);

	if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
	    IFF_DRV_RUNNING || (sc->nge_flags & NGE_FLAG_LINK) == 0)
		return;

	for (enq = 0; !FUNC2(&ifp->if_snd) &&
	    sc->nge_cdata.nge_tx_cnt < NGE_TX_RING_CNT - 2; ) {
		FUNC1(&ifp->if_snd, m_head);
		if (m_head == NULL)
			break;
		/*
		 * Pack the data into the transmit ring. If we
		 * don't have room, set the OACTIVE flag and wait
		 * for the NIC to drain the ring.
		 */
		if (FUNC7(sc, &m_head)) {
			if (m_head == NULL)
				break;
			FUNC3(&ifp->if_snd, m_head);
			ifp->if_drv_flags |= IFF_DRV_OACTIVE;
			break;
		}

		enq++;
		/*
		 * If there's a BPF listener, bounce a copy of this frame
		 * to him.
		 */
		FUNC0(ifp, m_head);
	}

	if (enq > 0) {
		FUNC6(sc->nge_cdata.nge_tx_ring_tag,
		    sc->nge_cdata.nge_tx_ring_map,
		    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
		/* Transmit */
		FUNC5(sc, NGE_CSR, NGE_CSR_TX_ENABLE);

		/* Set a timeout in case the chip goes out to lunch. */
		sc->nge_watchdog_timer = 5;
	}
}