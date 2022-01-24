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
struct TYPE_2__ {scalar_t__ stge_tx_cnt; } ;
struct stge_softc {scalar_t__ sc_link; int sc_watchdog_timer; TYPE_1__ sc_cdata; } ;
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_snd; struct stge_softc* if_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMAC_TxDMAPollNow ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,struct mbuf*) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  STGE_DMACtrl ; 
 int /*<<< orphan*/  FUNC5 (struct stge_softc*) ; 
 scalar_t__ STGE_TX_HIWAT ; 
 scalar_t__ FUNC6 (struct stge_softc*,struct mbuf**) ; 

__attribute__((used)) static void
FUNC7(struct ifnet *ifp)
{
        struct stge_softc *sc;
        struct mbuf *m_head;
	int enq;

	sc = ifp->if_softc;

	FUNC5(sc);

	if ((ifp->if_drv_flags & (IFF_DRV_RUNNING|IFF_DRV_OACTIVE)) !=
	    IFF_DRV_RUNNING || sc->sc_link == 0)
		return;

	for (enq = 0; !FUNC3(&ifp->if_snd); ) {
		if (sc->sc_cdata.stge_tx_cnt >= STGE_TX_HIWAT) {
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
		/* Transmit */
		FUNC0(sc, STGE_DMACtrl, DMAC_TxDMAPollNow);

		/* Set a timeout in case the chip goes out to lunch. */
		sc->sc_watchdog_timer = 5;
	}
}