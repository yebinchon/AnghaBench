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
struct ifnet {int /*<<< orphan*/  if_snd; int /*<<< orphan*/  if_drv_flags; } ;
struct TYPE_2__ {scalar_t__ age_tx_cnt; } ;
struct age_softc {scalar_t__ age_watchdog_timer; int age_flags; struct ifnet* age_ifp; TYPE_1__ age_cdata; } ;

/* Variables and functions */
 int AGE_FLAG_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct age_softc*) ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct age_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,char*) ; 

__attribute__((used)) static void
FUNC6(struct age_softc *sc)
{
	struct ifnet *ifp;

	FUNC0(sc);

	if (sc->age_watchdog_timer == 0 || --sc->age_watchdog_timer)
		return;

	ifp = sc->age_ifp;
	if ((sc->age_flags & AGE_FLAG_LINK) == 0) {
		FUNC5(sc->age_ifp, "watchdog timeout (missed link)\n");
		FUNC4(ifp, IFCOUNTER_OERRORS, 1);
		ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
		FUNC2(sc);
		return;
	}
	if (sc->age_cdata.age_tx_cnt == 0) {
		FUNC5(sc->age_ifp,
		    "watchdog timeout (missed Tx interrupts) -- recovering\n");
		if (!FUNC1(&ifp->if_snd))
			FUNC3(ifp);
		return;
	}
	FUNC5(sc->age_ifp, "watchdog timeout\n");
	FUNC4(ifp, IFCOUNTER_OERRORS, 1);
	ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
	FUNC2(sc);
	if (!FUNC1(&ifp->if_snd))
		FUNC3(ifp);
}