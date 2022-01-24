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
struct rl_softc {scalar_t__ suspended; int /*<<< orphan*/  rl_dev; struct ifnet* rl_ifp; } ;
struct ifnet {int if_capabilities; int if_flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int IFCAP_WOL ; 
 int IFF_UP ; 
 int PCIM_PSTAT_PMEENABLE ; 
 scalar_t__ PCIR_POWER_STATUS ; 
 int /*<<< orphan*/  PCIY_PMG ; 
 int /*<<< orphan*/  FUNC0 (struct rl_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rl_softc*) ; 
 struct rl_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rl_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct rl_softc*) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct rl_softc		*sc;
	struct ifnet		*ifp;
	int			pmc;
	uint16_t		pmstat;

	sc = FUNC2(dev);
	ifp = sc->rl_ifp;

	FUNC0(sc);

	if ((ifp->if_capabilities & IFCAP_WOL) != 0 &&
	    FUNC3(sc->rl_dev, PCIY_PMG, &pmc) == 0) {
		/* Disable PME and clear PME status. */
		pmstat = FUNC4(sc->rl_dev,
		    pmc + PCIR_POWER_STATUS, 2);
		if ((pmstat & PCIM_PSTAT_PMEENABLE) != 0) {
			pmstat &= ~PCIM_PSTAT_PMEENABLE;
			FUNC5(sc->rl_dev,
			    pmc + PCIR_POWER_STATUS, pmstat, 2);
		}
		/*
		 * Clear WOL matching such that normal Rx filtering
		 * wouldn't interfere with WOL patterns.
		 */
		FUNC6(sc);
	}

	/* reinitialize interface if necessary */
	if (ifp->if_flags & IFF_UP)
		FUNC7(sc);

	sc->suspended = 0;

	FUNC1(sc);

	return (0);
}