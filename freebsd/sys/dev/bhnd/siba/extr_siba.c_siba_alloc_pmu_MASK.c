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
struct siba_softc {int dummy; } ;
struct TYPE_2__ {scalar_t__ pwrctl; } ;
struct siba_devinfo {scalar_t__ pmu_state; TYPE_1__ pmu; } ;
struct chipc_caps {scalar_t__ pwr_ctrl; scalar_t__ pmu; } ;
typedef  scalar_t__ siba_pmu_state ;
typedef  scalar_t__ device_t ;
typedef  int /*<<< orphan*/  ccaps ;

/* Variables and functions */
 struct chipc_caps* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  BHND_SERVICE_CHIPC ; 
 int /*<<< orphan*/  BHND_SERVICE_PWRCTL ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct siba_softc*) ; 
 scalar_t__ SIBA_PMU_BHND ; 
 scalar_t__ SIBA_PMU_FIXED ; 
 scalar_t__ SIBA_PMU_NONE ; 
 scalar_t__ SIBA_PMU_PWRCTL ; 
 int /*<<< orphan*/  FUNC3 (struct siba_softc*) ; 
 int FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct siba_devinfo* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 struct siba_softc* FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct chipc_caps*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(device_t dev, device_t child)
{
	struct siba_softc	*sc;
	struct siba_devinfo	*dinfo;
	device_t		 chipc;
	device_t		 pwrctl;
	struct chipc_caps	 ccaps;
	siba_pmu_state		 pmu_state;
	int			 error;

	if (FUNC9(child) != dev)
		return (EINVAL);

	sc = FUNC10(dev);
	dinfo = FUNC7(child);
	pwrctl = NULL;

	/* Fetch ChipCommon capability flags */
	chipc = FUNC6(child, BHND_SERVICE_CHIPC);
	if (chipc != NULL) {
		ccaps = *FUNC0(chipc);
		FUNC5(child, chipc, BHND_SERVICE_CHIPC);
	} else {
		FUNC12(&ccaps, 0, sizeof(ccaps));
	}

	/* Defer to bhnd(4)'s PMU implementation if ChipCommon exists and
	 * advertises PMU support */
	if (ccaps.pmu) {
		if ((error = FUNC4(dev, child)))
			return (error);

		FUNC1(dinfo->pmu_state == SIBA_PMU_BHND,
		    ("unexpected PMU state: %d", dinfo->pmu_state));

		return (0);
	}

	/*
	 * This is either a legacy PWRCTL chipset, or the device does not
	 * support dynamic clock control.
	 * 
	 * We need to map all bhnd(4) bus PMU to PWRCTL or no-op operations.
	 */
	if (ccaps.pwr_ctrl) {
		pmu_state = SIBA_PMU_PWRCTL;
		pwrctl = FUNC6(child, BHND_SERVICE_PWRCTL);
		if (pwrctl == NULL) {
			FUNC11(dev, "PWRCTL not found\n");
			return (ENODEV);
		}
	} else {
		pmu_state = SIBA_PMU_FIXED;
		pwrctl = NULL;
	}

	FUNC2(sc);

	/* Per-core PMU state already allocated? */
	if (dinfo->pmu_state != SIBA_PMU_NONE) {
		FUNC13("duplicate PMU allocation for %s",
		    FUNC8(child));
	}

	/* Update the child's PMU allocation state, and transfer ownership of
	 * the PWRCTL provider reference (if any) */
	dinfo->pmu_state = pmu_state;
	dinfo->pmu.pwrctl = pwrctl;

	FUNC3(sc);

	return (0);
}