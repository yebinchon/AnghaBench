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
struct ti_softc {scalar_t__ ti_timer; int ti_flags; struct ifnet* ti_ifp; int /*<<< orphan*/  ti_watchdog; } ;
struct ifnet {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int TI_FLAG_DEBUGING ; 
 int /*<<< orphan*/  FUNC0 (struct ti_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct ti_softc*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ti_softc*) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	struct ti_softc *sc;
	struct ifnet *ifp;

	sc = arg;
	FUNC0(sc);
	FUNC1(&sc->ti_watchdog, hz, ti_watchdog, sc);
	if (sc->ti_timer == 0 || --sc->ti_timer > 0)
		return;

	/*
	 * When we're debugging, the chip is often stopped for long periods
	 * of time, and that would normally cause the watchdog timer to fire.
	 * Since that impedes debugging, we don't want to do that.
	 */
	if (sc->ti_flags & TI_FLAG_DEBUGING)
		return;

	ifp = sc->ti_ifp;
	FUNC3(ifp, "watchdog timeout -- resetting\n");
	ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
	FUNC4(sc);

	FUNC2(ifp, IFCOUNTER_OERRORS, 1);
}