#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {scalar_t__ chip_id; int chip_rev; } ;
struct bhnd_pmu_softc {int /*<<< orphan*/  chipc_dev; TYPE_1__ cid; } ;

/* Variables and functions */
 scalar_t__ BHND_CHIPID_BCM4319 ; 
 scalar_t__ BHND_CHIPID_BCM4329 ; 
 int /*<<< orphan*/  BHND_NVAR_XTALFREQ ; 
 int /*<<< orphan*/  FUNC0 (struct bhnd_pmu_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BHND_PMU_CTRL ; 
 int /*<<< orphan*/  BHND_PMU_CTRL_NOILP_ON_WAIT ; 
 int /*<<< orphan*/  FUNC1 (struct bhnd_pmu_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bhnd_pmu_softc*,int,int,int) ; 
 int FUNC3 (struct bhnd_pmu_softc*) ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC4 (struct bhnd_pmu_softc*,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct bhnd_pmu_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct bhnd_pmu_softc*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct bhnd_pmu_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct bhnd_pmu_softc*) ; 

int 
FUNC10(struct bhnd_pmu_softc *sc)
{
	uint32_t	xtalfreq;
	int		error;

	if (FUNC3(sc) == 1) {
		FUNC0(sc, BHND_PMU_CTRL, ~BHND_PMU_CTRL_NOILP_ON_WAIT);
	} else if (FUNC3(sc) >= 2) {
		FUNC1(sc, BHND_PMU_CTRL, BHND_PMU_CTRL_NOILP_ON_WAIT);
	}

	if (sc->cid.chip_id == BHND_CHIPID_BCM4329 && sc->cid.chip_rev == 2) {
		/* Fix for 4329b0 bad LPOM state. */
		FUNC2(sc, 2, 0x100, ~0);
		FUNC2(sc, 3, 0x4, ~0);
	}

	if (sc->cid.chip_id == BHND_CHIPID_BCM4319) {
		/* Limiting the PALDO spike during init time */
		FUNC2(sc, 2, 0x00000005, 0x00000007);
	}


	/* Fetch target xtalfreq, in KHz */
	error = FUNC5(sc->chipc_dev, BHND_NVAR_XTALFREQ,
	    &xtalfreq);

	/* If not available, log any real errors, and then try to measure it */
	if (error) {
		if (error != ENOENT)
			FUNC4(sc, "error fetching xtalfreq: %d\n", error);

		xtalfreq = FUNC6(sc);
	}

	/* Perform PLL initialization */
	FUNC7(sc, xtalfreq);

	if ((error = FUNC8(sc)))
		return (error);

	FUNC9(sc);

	return (0);
}