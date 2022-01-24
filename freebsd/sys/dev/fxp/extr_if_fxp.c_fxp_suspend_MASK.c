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
struct fxp_softc {int suspended; int /*<<< orphan*/  dev; int /*<<< orphan*/  flags; int /*<<< orphan*/  ifp; } ;
typedef  int /*<<< orphan*/  if_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FXP_FLAG_WOL ; 
 int /*<<< orphan*/  FUNC0 (struct fxp_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct fxp_softc*) ; 
 int IFCAP_WOL_MAGIC ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int PCIM_PSTAT_PME ; 
 int PCIM_PSTAT_PMEENABLE ; 
 scalar_t__ PCIR_POWER_STATUS ; 
 int /*<<< orphan*/  PCIY_PMG ; 
 struct fxp_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fxp_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fxp_softc*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC8 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct fxp_softc *sc = FUNC2(dev);
	if_t ifp;
	int pmc;
	uint16_t pmstat;

	FUNC0(sc);

	ifp = sc->ifp;
	if (FUNC7(sc->dev, PCIY_PMG, &pmc) == 0) {
		pmstat = FUNC8(sc->dev, pmc + PCIR_POWER_STATUS, 2);
		pmstat &= ~(PCIM_PSTAT_PME | PCIM_PSTAT_PMEENABLE);
		if ((FUNC5(ifp) & IFCAP_WOL_MAGIC) != 0) {
			/* Request PME. */
			pmstat |= PCIM_PSTAT_PME | PCIM_PSTAT_PMEENABLE;
			sc->flags |= FXP_FLAG_WOL;
			/* Reconfigure hardware to accept magic frames. */
			FUNC6(ifp, 0, IFF_DRV_RUNNING);
			FUNC3(sc, 0);
		}
		FUNC9(sc->dev, pmc + PCIR_POWER_STATUS, pmstat, 2);
	}
	FUNC4(sc);

	sc->suspended = 1;

	FUNC1(sc);
	return (0);
}