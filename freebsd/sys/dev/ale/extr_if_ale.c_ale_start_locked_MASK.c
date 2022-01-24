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
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_snd; struct ale_softc* if_softc; } ;
struct TYPE_2__ {scalar_t__ ale_tx_cnt; int /*<<< orphan*/  ale_tx_prod; } ;
struct ale_softc {int ale_flags; int /*<<< orphan*/  ale_watchdog_timer; TYPE_1__ ale_cdata; } ;

/* Variables and functions */
 int ALE_FLAG_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct ale_softc*) ; 
 int /*<<< orphan*/  ALE_MBOX_TPD_PROD_IDX ; 
 scalar_t__ ALE_TX_DESC_HIWAT ; 
 int /*<<< orphan*/  ALE_TX_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (struct ale_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,struct mbuf*) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct mbuf*) ; 
 scalar_t__ FUNC6 (struct ale_softc*,struct mbuf**) ; 
 int /*<<< orphan*/  FUNC7 (struct ale_softc*) ; 

__attribute__((used)) static void
FUNC8(struct ifnet *ifp)
{
        struct ale_softc *sc;
        struct mbuf *m_head;
	int enq;

	sc = ifp->if_softc;

	FUNC0(sc);

	/* Reclaim transmitted frames. */
	if (sc->ale_cdata.ale_tx_cnt >= ALE_TX_DESC_HIWAT)
		FUNC7(sc);

	if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
	    IFF_DRV_RUNNING || (sc->ale_flags & ALE_FLAG_LINK) == 0)
		return;

	for (enq = 0; !FUNC4(&ifp->if_snd); ) {
		FUNC3(&ifp->if_snd, m_head);
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
			FUNC5(&ifp->if_snd, m_head);
			ifp->if_drv_flags |= IFF_DRV_OACTIVE;
			break;
		}

		enq++;
		/*
		 * If there's a BPF listener, bounce a copy of this frame
		 * to him.
		 */
		FUNC2(ifp, m_head);
	}

	if (enq > 0) {
		/* Kick. */
		FUNC1(sc, ALE_MBOX_TPD_PROD_IDX,
		    sc->ale_cdata.ale_tx_prod);
		/* Set a timeout in case the chip goes out to lunch. */
		sc->ale_watchdog_timer = ALE_TX_TIMEOUT;
	}
}