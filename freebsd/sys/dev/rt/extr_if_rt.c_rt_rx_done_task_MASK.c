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
struct rt_softc {int intr_pending_mask; int int_rx_done_mask; int /*<<< orphan*/  rx_done_task; int /*<<< orphan*/  taskqueue; int /*<<< orphan*/  rx_process_limit; int /*<<< orphan*/ * rx_ring; struct ifnet* ifp; } ;
struct ifnet {int if_drv_flags; } ;

/* Variables and functions */
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  RT_DEBUG_RX ; 
 int /*<<< orphan*/  FUNC0 (struct rt_softc*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct rt_softc*,int) ; 
 int FUNC4 (struct rt_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(void *context, int pending)
{
	struct rt_softc *sc;
	struct ifnet *ifp;
	int again;

	sc = context;
	ifp = sc->ifp;

	FUNC0(sc, RT_DEBUG_RX, "Rx done task\n");

	if (!(ifp->if_drv_flags & IFF_DRV_RUNNING))
		return;

	sc->intr_pending_mask &= ~sc->int_rx_done_mask;

	again = FUNC4(sc, &sc->rx_ring[0], sc->rx_process_limit);

	FUNC1(sc);

	if ((sc->intr_pending_mask & sc->int_rx_done_mask) || again) {
		FUNC0(sc, RT_DEBUG_RX,
		    "Rx done task: scheduling again\n");
		FUNC5(sc->taskqueue, &sc->rx_done_task);
	} else {
		FUNC3(sc, sc->int_rx_done_mask);
	}

	FUNC2(sc);
}