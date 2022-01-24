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
struct TYPE_6__ {int /*<<< orphan*/  cur_tx; } ;
struct rl_softc {int rl_flags; int rl_watchdog_timer; TYPE_2__ rl_cdata; int /*<<< orphan*/  rl_txthresh; } ;
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_snd; struct rl_softc* if_softc; } ;
struct TYPE_5__ {int len; } ;
struct TYPE_7__ {TYPE_1__ m_pkthdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (struct rl_softc*,int /*<<< orphan*/ ,int) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct mbuf*) ; 
 TYPE_3__* FUNC4 (struct rl_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct rl_softc*) ; 
 int RL_FLAG_LINK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rl_softc*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct rl_softc*,struct mbuf**) ; 

__attribute__((used)) static void
FUNC10(struct ifnet *ifp)
{
	struct rl_softc		*sc = ifp->if_softc;
	struct mbuf		*m_head = NULL;

	FUNC7(sc);

	if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
	    IFF_DRV_RUNNING || (sc->rl_flags & RL_FLAG_LINK) == 0)
		return;

	while (FUNC4(sc) == NULL) {

		FUNC2(&ifp->if_snd, m_head);

		if (m_head == NULL)
			break;

		if (FUNC9(sc, &m_head)) {
			if (m_head == NULL)
				break;
			FUNC3(&ifp->if_snd, m_head);
			ifp->if_drv_flags |= IFF_DRV_OACTIVE;
			break;
		}

		/* Pass a copy of this mbuf chain to the bpf subsystem. */
		FUNC0(ifp, FUNC4(sc));

		/* Transmit the frame. */
		FUNC1(sc, FUNC5(sc),
		    FUNC8(sc->rl_txthresh) |
		    FUNC4(sc)->m_pkthdr.len);

		FUNC6(sc->rl_cdata.cur_tx);

		/* Set a timeout in case the chip goes out to lunch. */
		sc->rl_watchdog_timer = 5;
	}

	/*
	 * We broke out of the loop because all our TX slots are
	 * full. Mark the NIC as busy until it drains some of the
	 * packets from the queue.
	 */
	if (FUNC4(sc) != NULL)
		ifp->if_drv_flags |= IFF_DRV_OACTIVE;
}