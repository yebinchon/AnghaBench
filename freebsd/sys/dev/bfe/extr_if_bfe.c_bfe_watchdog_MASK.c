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
struct bfe_softc {scalar_t__ bfe_watchdog_timer; int /*<<< orphan*/  bfe_dev; struct ifnet* bfe_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bfe_softc*) ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bfe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct bfe_softc *sc)
{
	struct ifnet *ifp;

	FUNC0(sc);

	if (sc->bfe_watchdog_timer == 0 || --sc->bfe_watchdog_timer)
		return;

	ifp = sc->bfe_ifp;

	FUNC4(sc->bfe_dev, "watchdog timeout -- resetting\n");

	FUNC5(ifp, IFCOUNTER_OERRORS, 1);
	ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
	FUNC2(sc);

	if (!FUNC1(&ifp->if_snd))
		FUNC3(ifp);
}