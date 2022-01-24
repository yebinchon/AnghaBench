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
typedef  int uint16_t ;
struct ifnet {int if_flags; int /*<<< orphan*/  if_drv_flags; } ;
struct ale_softc {struct ifnet* ale_ifp; int /*<<< orphan*/  ale_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ale_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ale_softc*) ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int IFF_UP ; 
 int PCIM_PSTAT_PMEENABLE ; 
 scalar_t__ PCIR_POWER_STATUS ; 
 int /*<<< orphan*/  PCIY_PMG ; 
 int /*<<< orphan*/  FUNC2 (struct ale_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ale_softc*) ; 
 struct ale_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct ale_softc *sc;
	struct ifnet *ifp;
	int pmc;
	uint16_t pmstat;

	sc = FUNC4(dev);

	FUNC0(sc);
	if (FUNC5(sc->ale_dev, PCIY_PMG, &pmc) == 0) {
		/* Disable PME and clear PME status. */
		pmstat = FUNC6(sc->ale_dev,
		    pmc + PCIR_POWER_STATUS, 2);
		if ((pmstat & PCIM_PSTAT_PMEENABLE) != 0) {
			pmstat &= ~PCIM_PSTAT_PMEENABLE;
			FUNC7(sc->ale_dev,
			    pmc + PCIR_POWER_STATUS, pmstat, 2);
		}
	}
	/* Reset PHY. */
	FUNC3(sc);
	ifp = sc->ale_ifp;
	if ((ifp->if_flags & IFF_UP) != 0) {
		ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
		FUNC2(sc);
	}
	FUNC1(sc);

	return (0);
}