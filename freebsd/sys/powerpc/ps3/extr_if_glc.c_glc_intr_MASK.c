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
typedef  int uint64_t ;
struct glc_softc {int /*<<< orphan*/  sc_mtx; TYPE_1__* sc_ifp; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_bus; int /*<<< orphan*/  sc_interrupt_status; } ;
struct TYPE_2__ {int if_link_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GELIC_GET_LINK_STATUS ; 
 int GELIC_INT_PHY ; 
 int GELIC_INT_RXDONE ; 
 int GELIC_INT_RXFRAME ; 
 int GELIC_INT_TXDONE ; 
 int GELIC_INT_TX_CHAIN_END ; 
 int GELIC_LINK_UP ; 
 int /*<<< orphan*/  GELIC_VLAN_TX_ETHERNET ; 
 int LINK_STATE_DOWN ; 
 int LINK_STATE_UP ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct glc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct glc_softc*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(void *xsc)
{
	struct glc_softc *sc = xsc; 
	uint64_t status, linkstat, junk;

	FUNC5(&sc->sc_mtx);

	status = FUNC0(&sc->sc_interrupt_status);

	if (status == 0) {
		FUNC6(&sc->sc_mtx);
		return;
	}

	if (status & (GELIC_INT_RXDONE | GELIC_INT_RXFRAME))
		FUNC1(sc);

	if (status & (GELIC_INT_TXDONE | GELIC_INT_TX_CHAIN_END))
		FUNC2(sc);

	if (status & GELIC_INT_PHY) {
		FUNC4(sc->sc_bus, sc->sc_dev, GELIC_GET_LINK_STATUS,
		    GELIC_VLAN_TX_ETHERNET, 0, 0, &linkstat, &junk);

		linkstat = (linkstat & GELIC_LINK_UP) ?
		    LINK_STATE_UP : LINK_STATE_DOWN;
		if (linkstat != sc->sc_ifp->if_link_state)
			FUNC3(sc->sc_ifp, linkstat);
	}

	FUNC6(&sc->sc_mtx);
}