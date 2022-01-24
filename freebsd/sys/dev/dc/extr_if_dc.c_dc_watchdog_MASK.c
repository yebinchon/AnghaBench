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
struct ifnet {int /*<<< orphan*/  if_snd; int /*<<< orphan*/  if_drv_flags; } ;
struct dc_softc {scalar_t__ dc_wdog_timer; int /*<<< orphan*/  dc_dev; struct ifnet* dc_ifp; int /*<<< orphan*/  dc_wdog_ch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dc_softc*) ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct dc_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct dc_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(void *xsc)
{
	struct dc_softc *sc = xsc;
	struct ifnet *ifp;

	FUNC0(sc);

	if (sc->dc_wdog_timer == 0 || --sc->dc_wdog_timer != 0) {
		FUNC2(&sc->dc_wdog_ch, hz, dc_watchdog, sc);
		return;
	}

	ifp = sc->dc_ifp;
	FUNC6(ifp, IFCOUNTER_OERRORS, 1);
	FUNC5(sc->dc_dev, "watchdog timeout\n");

	ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
	FUNC3(sc);

	if (!FUNC1(&ifp->if_snd))
		FUNC4(ifp);
}