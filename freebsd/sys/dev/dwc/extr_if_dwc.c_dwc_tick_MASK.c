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
struct ifnet {int if_drv_flags; } ;
struct dwc_softc {scalar_t__ tx_watchdog_count; int link_is_up; int /*<<< orphan*/  dwc_callout; int /*<<< orphan*/  mii_softc; struct ifnet* ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dwc_softc*) ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct dwc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct dwc_softc*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(void *arg)
{
	struct dwc_softc *sc;
	struct ifnet *ifp;
	int link_was_up;

	sc = arg;

	FUNC0(sc);

	ifp = sc->ifp;

	if (!(ifp->if_drv_flags & IFF_DRV_RUNNING))
	    return;

	/*
	 * Typical tx watchdog.  If this fires it indicates that we enqueued
	 * packets for output and never got a txdone interrupt for them.  Maybe
	 * it's a missed interrupt somehow, just pretend we got one.
	 */
	if (sc->tx_watchdog_count > 0) {
		if (--sc->tx_watchdog_count == 0) {
			FUNC3(sc);
		}
	}

	/* Gather stats from hardware counters. */
	FUNC2(sc);

	/* Check the media status. */
	link_was_up = sc->link_is_up;
	FUNC5(sc->mii_softc);
	if (sc->link_is_up && !link_was_up)
		FUNC4(sc);

	/* Schedule another check one second from now. */
	FUNC1(&sc->dwc_callout, hz, dwc_tick, sc);
}