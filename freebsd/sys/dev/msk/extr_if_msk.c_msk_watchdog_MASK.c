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
struct msk_if_softc {scalar_t__ msk_watchdog_timer; int msk_flags; struct ifnet* msk_ifp; } ;
struct ifnet {int /*<<< orphan*/  if_snd; int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MSK_FLAG_LINK ; 
 int /*<<< orphan*/  FUNC1 (struct msk_if_softc*) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct msk_if_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 

__attribute__((used)) static void
FUNC6(struct msk_if_softc *sc_if)
{
	struct ifnet *ifp;

	FUNC1(sc_if);

	if (sc_if->msk_watchdog_timer == 0 || --sc_if->msk_watchdog_timer)
		return;
	ifp = sc_if->msk_ifp;
	if ((sc_if->msk_flags & MSK_FLAG_LINK) == 0) {
		if (bootverbose)
			FUNC3(sc_if->msk_ifp, "watchdog timeout "
			   "(missed link)\n");
		FUNC2(ifp, IFCOUNTER_OERRORS, 1);
		ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
		FUNC4(sc_if);
		return;
	}

	FUNC3(ifp, "watchdog timeout\n");
	FUNC2(ifp, IFCOUNTER_OERRORS, 1);
	ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
	FUNC4(sc_if);
	if (!FUNC0(&ifp->if_snd))
		FUNC5(ifp);
}