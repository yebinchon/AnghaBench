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
struct ale_softc {scalar_t__ ale_watchdog_timer; int ale_flags; struct ifnet* ale_ifp; } ;

/* Variables and functions */
 int ALE_FLAG_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct ale_softc*) ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ale_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,char*) ; 

__attribute__((used)) static void
FUNC6(struct ale_softc *sc)
{
	struct ifnet *ifp;

	FUNC0(sc);

	if (sc->ale_watchdog_timer == 0 || --sc->ale_watchdog_timer)
		return;

	ifp = sc->ale_ifp;
	if ((sc->ale_flags & ALE_FLAG_LINK) == 0) {
		FUNC5(sc->ale_ifp, "watchdog timeout (lost link)\n");
		FUNC4(ifp, IFCOUNTER_OERRORS, 1);
		ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
		FUNC2(sc);
		return;
	}
	FUNC5(sc->ale_ifp, "watchdog timeout -- resetting\n");
	FUNC4(ifp, IFCOUNTER_OERRORS, 1);
	ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
	FUNC2(sc);
	if (!FUNC1(&ifp->if_snd))
		FUNC3(ifp);
}