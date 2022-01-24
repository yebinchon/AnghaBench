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
struct sge_softc {scalar_t__ sge_timer; int sge_flags; struct ifnet* sge_ifp; int /*<<< orphan*/  sge_dev; } ;
struct ifnet {int /*<<< orphan*/  if_snd; int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int SGE_FLAG_LINK ; 
 int /*<<< orphan*/  FUNC1 (struct sge_softc*) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sge_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 

__attribute__((used)) static void
FUNC6(struct sge_softc *sc)
{
	struct ifnet *ifp;

	FUNC1(sc);
	if (sc->sge_timer == 0 || --sc->sge_timer > 0)
		return;

	ifp = sc->sge_ifp;
	if ((sc->sge_flags & SGE_FLAG_LINK) == 0) {
		if (1 || bootverbose)
			FUNC2(sc->sge_dev,
			    "watchdog timeout (lost link)\n");
		FUNC3(ifp, IFCOUNTER_OERRORS, 1);
		ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
		FUNC4(sc);
		return;
	}
	FUNC2(sc->sge_dev, "watchdog timeout\n");
	FUNC3(ifp, IFCOUNTER_OERRORS, 1);

	ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
	FUNC4(sc);
	if (!FUNC0(&sc->sge_ifp->if_snd))
		FUNC5(ifp);
}