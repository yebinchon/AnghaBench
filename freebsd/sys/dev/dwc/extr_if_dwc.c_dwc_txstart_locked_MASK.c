#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_snd; } ;
struct dwc_softc {int txcount; int /*<<< orphan*/  tx_watchdog_count; int /*<<< orphan*/  tx_idx_head; struct ifnet* ifp; int /*<<< orphan*/  link_is_up; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc_softc*) ; 
 int IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  TRANSMIT_POLL_DEMAND ; 
 int TX_DESC_COUNT ; 
 int /*<<< orphan*/  WATCHDOG_TIMEOUT_SECS ; 
 int /*<<< orphan*/  FUNC4 (struct dwc_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct dwc_softc*,int /*<<< orphan*/ ,struct mbuf**) ; 
 int /*<<< orphan*/  FUNC6 (struct dwc_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct dwc_softc *sc)
{
	struct ifnet *ifp;
	struct mbuf *m;
	int enqueued;

	FUNC1(sc);

	if (!sc->link_is_up)
		return;

	ifp = sc->ifp;

	if (ifp->if_drv_flags & IFF_DRV_OACTIVE) {
		return;
	}

	enqueued = 0;

	for (;;) {
		if (sc->txcount == (TX_DESC_COUNT-1)) {
			ifp->if_drv_flags |= IFF_DRV_OACTIVE;
			break;
		}

		FUNC2(&ifp->if_snd, m);
		if (m == NULL)
			break;
		if (FUNC5(sc, sc->tx_idx_head, &m) != 0) {
			FUNC3(&ifp->if_snd, m);
			break;
		}
		FUNC0(ifp, m);
		sc->tx_idx_head = FUNC6(sc, sc->tx_idx_head);
		++enqueued;
	}

	if (enqueued != 0) {
		FUNC4(sc, TRANSMIT_POLL_DEMAND, 0x1);
		sc->tx_watchdog_count = WATCHDOG_TIMEOUT_SECS;
	}
}