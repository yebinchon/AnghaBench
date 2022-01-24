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
struct siba_devinfo {int pmu_state; TYPE_1__ pmu; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BHND_CLOCK_DYN ; 
 int /*<<< orphan*/  BHND_SERVICE_PWRCTL ; 
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct siba_softc*) ; 
#define  SIBA_PMU_BHND 131 
#define  SIBA_PMU_FIXED 130 
#define  SIBA_PMU_NONE 129 
#define  SIBA_PMU_PWRCTL 128 
 int /*<<< orphan*/  FUNC2 (struct siba_softc*) ; 
 int FUNC3 (scalar_t__,scalar_t__) ; 
 int FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 struct siba_devinfo* FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 struct siba_softc* FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 

__attribute__((used)) static int
FUNC11(device_t dev, device_t child)
{
	struct siba_softc	*sc;
	struct siba_devinfo	*dinfo;
	device_t		 pwrctl;
	int			 error;

	if (FUNC8(child) != dev)
		return (EINVAL);

	sc = FUNC9(dev);
	dinfo = FUNC6(child);

	FUNC1(sc);
	switch(dinfo->pmu_state) {
	case SIBA_PMU_NONE:
		FUNC10("pmu over-release for %s", FUNC7(child));
		FUNC2(sc);
		return (ENXIO);

	case SIBA_PMU_BHND:
		FUNC2(sc);
		return (FUNC3(dev, child));

	case SIBA_PMU_PWRCTL:
		/* Requesting BHND_CLOCK_DYN releases any outstanding clock
		 * reservations */
		pwrctl = dinfo->pmu.pwrctl;
		error = FUNC4(pwrctl, child,
		    BHND_CLOCK_DYN);
		if (error) {
			FUNC2(sc);
			return (error);
		}

		/* Clean up the child's PMU state */
		dinfo->pmu_state = SIBA_PMU_NONE;
		dinfo->pmu.pwrctl = NULL;
		FUNC2(sc);

		/* Release the provider reference */
		FUNC5(child, pwrctl, BHND_SERVICE_PWRCTL);
		return (0);

	case SIBA_PMU_FIXED:
		/* Clean up the child's PMU state */
		FUNC0(dinfo->pmu.pwrctl == NULL,
		    ("PWRCTL reference with FIXED state"));

		dinfo->pmu_state = SIBA_PMU_NONE;
		dinfo->pmu.pwrctl = NULL;
		FUNC2(sc);
	}

	FUNC10("invalid PMU state: %d", dinfo->pmu_state);
}