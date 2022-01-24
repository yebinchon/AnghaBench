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
struct nge_softc {int /*<<< orphan*/  nge_flags; int /*<<< orphan*/  nge_dev; struct ifnet* nge_ifp; } ;
struct ifnet {int if_flags; int /*<<< orphan*/  if_drv_flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int IFF_UP ; 
 int /*<<< orphan*/  NGE_FLAG_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (struct nge_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct nge_softc*) ; 
 int PCIM_PSTAT_PMEENABLE ; 
 scalar_t__ PCIR_POWER_STATUS ; 
 int /*<<< orphan*/  PCIY_PMG ; 
 struct nge_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nge_softc*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct nge_softc *sc;
	struct ifnet *ifp;
	uint16_t pmstat;
	int pmc;

	sc = FUNC2(dev);

	FUNC0(sc);
	ifp = sc->nge_ifp;
	if (FUNC4(sc->nge_dev, PCIY_PMG, &pmc) == 0) {
		/* Disable PME and clear PME status. */
		pmstat = FUNC5(sc->nge_dev,
		    pmc + PCIR_POWER_STATUS, 2);
		if ((pmstat & PCIM_PSTAT_PMEENABLE) != 0) {
			pmstat &= ~PCIM_PSTAT_PMEENABLE;
			FUNC6(sc->nge_dev,
			    pmc + PCIR_POWER_STATUS, pmstat, 2);
		}
	}
	if (ifp->if_flags & IFF_UP) {
		ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
		FUNC3(sc);
	}

	sc->nge_flags &= ~NGE_FLAG_SUSPENDED;
	FUNC1(sc);

	return (0);
}