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
struct stge_softc {scalar_t__ sc_watchdog_timer; struct ifnet* sc_ifp; } ;
struct ifnet {int /*<<< orphan*/  if_snd; int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct stge_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct stge_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 

__attribute__((used)) static void
FUNC6(struct stge_softc *sc)
{
	struct ifnet *ifp;

	FUNC1(sc);

	if (sc->sc_watchdog_timer == 0 || --sc->sc_watchdog_timer)
		return;

	ifp = sc->sc_ifp;
	FUNC3(sc->sc_ifp, "device timeout\n");
	FUNC2(ifp, IFCOUNTER_OERRORS, 1);
	ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
	FUNC4(sc);
	if (!FUNC0(&ifp->if_snd))
		FUNC5(ifp);
}