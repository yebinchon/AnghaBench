#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  len; TYPE_3__* rcvif; } ;
struct mbuf {int /*<<< orphan*/  m_len; TYPE_1__ m_pkthdr; } ;
struct llan_xfer {struct mbuf* rx_mbuf; } ;
struct llan_softc {size_t rx_dma_slot; int rx_valid_val; int rx_buf_len; int /*<<< orphan*/  io_lock; TYPE_2__* rx_buf; int /*<<< orphan*/  unit; TYPE_3__* ifp; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* if_input ) (TYPE_3__*,struct mbuf*) ;} ;
struct TYPE_6__ {int control; int /*<<< orphan*/  length; scalar_t__ offset; scalar_t__ handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  H_VIO_SIGNAL ; 
 int /*<<< orphan*/  IFCOUNTER_IERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_IPACKETS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct llan_softc*,struct llan_xfer*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,struct mbuf*) ; 

__attribute__((used)) static void
FUNC7(void *xsc)
{
	struct llan_softc *sc = xsc;
	struct llan_xfer *rx;
	struct mbuf *m;

	FUNC3(&sc->io_lock);
restart:
	FUNC5(H_VIO_SIGNAL, sc->unit, 0);

	while ((sc->rx_buf[sc->rx_dma_slot].control >> 7) == sc->rx_valid_val) {
		rx = (struct llan_xfer *)sc->rx_buf[sc->rx_dma_slot].handle;
		m = rx->rx_mbuf;
		FUNC2(m, sc->rx_buf[sc->rx_dma_slot].offset - 8);
		m->m_len = sc->rx_buf[sc->rx_dma_slot].length;

		/* llan_add_rxbuf does DMA sync and unload as well as requeue */
		if (FUNC1(sc, rx) != 0) {
			FUNC0(sc->ifp, IFCOUNTER_IERRORS, 1);
			continue;
		}

		FUNC0(sc->ifp, IFCOUNTER_IPACKETS, 1);
		FUNC2(m, sc->rx_buf[sc->rx_dma_slot].offset);
		m->m_len = sc->rx_buf[sc->rx_dma_slot].length;
		m->m_pkthdr.rcvif = sc->ifp;
		m->m_pkthdr.len = m->m_len;
		sc->rx_dma_slot++;

		if (sc->rx_dma_slot >= sc->rx_buf_len/sizeof(sc->rx_buf[0])) {
			sc->rx_dma_slot = 0;
			sc->rx_valid_val = !sc->rx_valid_val;
		}

		FUNC4(&sc->io_lock);
		(*sc->ifp->if_input)(sc->ifp, m);
		FUNC3(&sc->io_lock);
	}

	FUNC5(H_VIO_SIGNAL, sc->unit, 1);

	/*
	 * H_VIO_SIGNAL enables interrupts for future packets only.
	 * Make sure none were queued between the end of the loop and the
	 * enable interrupts call.
	 */
	if ((sc->rx_buf[sc->rx_dma_slot].control >> 7) == sc->rx_valid_val)
		goto restart;

	FUNC4(&sc->io_lock);
}