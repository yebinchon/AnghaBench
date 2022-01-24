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
typedef  int /*<<< orphan*/  uint16_t ;
struct jme_softc {struct ifnet* jme_ifp; int /*<<< orphan*/  jme_dev; } ;
struct ifnet {int if_flags; int /*<<< orphan*/  if_drv_flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (struct jme_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct jme_softc*) ; 
 int /*<<< orphan*/  PCIM_PSTAT_PMEENABLE ; 
 scalar_t__ PCIR_POWER_STATUS ; 
 int /*<<< orphan*/  PCIY_PMG ; 
 struct jme_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct jme_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct jme_softc*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct jme_softc *sc;
	struct ifnet *ifp;
	uint16_t pmstat;
	int pmc;

	sc = FUNC2(dev);

	FUNC0(sc);
	if (FUNC5(sc->jme_dev, PCIY_PMG, &pmc) == 0) {
		pmstat = FUNC6(sc->jme_dev,
		    pmc + PCIR_POWER_STATUS, 2);
		/* Disable PME clear PME status. */
		pmstat &= ~PCIM_PSTAT_PMEENABLE;
		FUNC7(sc->jme_dev,
		    pmc + PCIR_POWER_STATUS, pmstat, 2);
	}
	/* Wakeup PHY. */
	FUNC4(sc);
	ifp = sc->jme_ifp;
	if ((ifp->if_flags & IFF_UP) != 0) {
		ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
		FUNC3(sc);
	}

	FUNC1(sc);

	return (0);
}