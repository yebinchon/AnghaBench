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
struct fxp_softc {int flags; scalar_t__ suspended; int /*<<< orphan*/  dev; int /*<<< orphan*/  ifp; } ;
typedef  int /*<<< orphan*/  if_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fxp_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fxp_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fxp_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FXP_CSR_PMDR ; 
 int /*<<< orphan*/  FXP_CSR_PORT ; 
 int FXP_FLAG_WOL ; 
 int FXP_FLAG_WOLCAP ; 
 int /*<<< orphan*/  FUNC4 (struct fxp_softc*) ; 
 int /*<<< orphan*/  FXP_PORT_SELECTIVE_RESET ; 
 int /*<<< orphan*/  FUNC5 (struct fxp_softc*) ; 
 int IFF_UP ; 
 int /*<<< orphan*/  PCIM_PSTAT_PMEENABLE ; 
 scalar_t__ PCIR_POWER_STATUS ; 
 int /*<<< orphan*/  PCIY_PMG ; 
 struct fxp_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct fxp_softc*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct fxp_softc *sc = FUNC6(dev);
	if_t ifp = sc->ifp;
	int pmc;
	uint16_t pmstat;

	FUNC4(sc);

	if (FUNC9(sc->dev, PCIY_PMG, &pmc) == 0) {
		sc->flags &= ~FXP_FLAG_WOL;
		pmstat = FUNC10(sc->dev, pmc + PCIR_POWER_STATUS, 2);
		/* Disable PME and clear PME status. */
		pmstat &= ~PCIM_PSTAT_PMEENABLE;
		FUNC11(sc->dev, pmc + PCIR_POWER_STATUS, pmstat, 2);
		if ((sc->flags & FXP_FLAG_WOLCAP) != 0)
			FUNC1(sc, FXP_CSR_PMDR,
			    FUNC0(sc, FXP_CSR_PMDR));
	}

	FUNC2(sc, FXP_CSR_PORT, FXP_PORT_SELECTIVE_RESET);
	FUNC3(10);

	/* reinitialize interface if necessary */
	if (FUNC8(ifp) & IFF_UP)
		FUNC7(sc, 1);

	sc->suspended = 0;

	FUNC5(sc);
	return (0);
}