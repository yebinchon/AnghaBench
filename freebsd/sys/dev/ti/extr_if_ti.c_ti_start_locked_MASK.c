#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ti_tx_ring_map; int /*<<< orphan*/  ti_tx_ring_tag; } ;
struct TYPE_3__ {int /*<<< orphan*/ * ti_tx_ring; } ;
struct ti_softc {int ti_txcnt; int ti_timer; int /*<<< orphan*/  ti_tx_saved_prodidx; TYPE_2__ ti_cdata; TYPE_1__ ti_rdata; } ;
struct mbuf {int dummy; } ;
struct ifnet {int /*<<< orphan*/  if_drv_flags; int /*<<< orphan*/  if_snd; struct ti_softc* if_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct ti_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,struct mbuf*) ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  TI_MB_SENDPROD_IDX ; 
 int TI_TX_RING_CNT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct ti_softc*,struct mbuf**) ; 

__attribute__((used)) static void
FUNC7(struct ifnet *ifp)
{
	struct ti_softc *sc;
	struct mbuf *m_head = NULL;
	int enq = 0;

	sc = ifp->if_softc;

	for (; !FUNC3(&ifp->if_snd) &&
	    sc->ti_txcnt < (TI_TX_RING_CNT - 16);) {
		FUNC2(&ifp->if_snd, m_head);
		if (m_head == NULL)
			break;

		/*
		 * Pack the data into the transmit ring. If we
		 * don't have room, set the OACTIVE flag and wait
		 * for the NIC to drain the ring.
		 */
		if (FUNC6(sc, &m_head)) {
			if (m_head == NULL)
				break;
			FUNC4(&ifp->if_snd, m_head);
			ifp->if_drv_flags |= IFF_DRV_OACTIVE;
			break;
		}

		enq++;
		/*
		 * If there's a BPF listener, bounce a copy of this frame
		 * to him.
		 */
		FUNC1(ifp, m_head);
	}

	if (enq > 0) {
		if (sc->ti_rdata.ti_tx_ring != NULL)
			FUNC5(sc->ti_cdata.ti_tx_ring_tag,
			    sc->ti_cdata.ti_tx_ring_map, BUS_DMASYNC_PREWRITE);
		/* Transmit */
		FUNC0(sc, TI_MB_SENDPROD_IDX, sc->ti_tx_saved_prodidx);

		/*
		 * Set a timeout in case the chip goes out to lunch.
		 */
		sc->ti_timer = 5;
	}
}