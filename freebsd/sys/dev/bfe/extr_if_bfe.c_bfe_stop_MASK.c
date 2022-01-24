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
struct bfe_softc {scalar_t__ bfe_watchdog_timer; int /*<<< orphan*/  bfe_stat_co; int /*<<< orphan*/  bfe_flags; struct ifnet* bfe_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFE_FLAG_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct bfe_softc*) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (struct bfe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfe_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct bfe_softc *sc)
{
	struct ifnet *ifp;

	FUNC0(sc);

	ifp = sc->bfe_ifp;
	ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
	sc->bfe_flags &= ~BFE_FLAG_LINK;
	FUNC4(&sc->bfe_stat_co);
	sc->bfe_watchdog_timer = 0;

	FUNC1(sc);
	FUNC3(sc);
	FUNC2(sc);
}