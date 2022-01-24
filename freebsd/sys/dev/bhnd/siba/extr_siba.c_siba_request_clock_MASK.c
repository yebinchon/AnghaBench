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
struct TYPE_2__ {int /*<<< orphan*/  pwrctl; } ;
struct siba_devinfo {int pmu_state; TYPE_1__ pmu; } ;
typedef  scalar_t__ device_t ;
typedef  int /*<<< orphan*/  bhnd_clock ;

/* Variables and functions */
#define  BHND_CLOCK_ALP 135 
#define  BHND_CLOCK_DYN 134 
#define  BHND_CLOCK_HT 133 
#define  BHND_CLOCK_ILP 132 
 int EINVAL ; 
 int ENODEV ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct siba_softc*) ; 
#define  SIBA_PMU_BHND 131 
#define  SIBA_PMU_FIXED 130 
#define  SIBA_PMU_NONE 129 
#define  SIBA_PMU_PWRCTL 128 
 int /*<<< orphan*/  FUNC1 (struct siba_softc*) ; 
 int FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct siba_devinfo* FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 struct siba_softc* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static int
FUNC8(device_t dev, device_t child, bhnd_clock clock)
{
	struct siba_softc	*sc;
	struct siba_devinfo	*dinfo;
	int			 error;

	if (FUNC5(child) != dev)
		return (EINVAL);

	sc = FUNC6(dev);
	dinfo = FUNC4(child);

	FUNC0(sc);
	switch(dinfo->pmu_state) {
	case SIBA_PMU_NONE:
		FUNC7("no active PMU request state");

		FUNC1(sc);
		return (ENXIO);

	case SIBA_PMU_BHND:
		FUNC1(sc);
		return (FUNC2(dev, child, clock));

	case SIBA_PMU_PWRCTL:
		error = FUNC3(dinfo->pmu.pwrctl, child,
		    clock);
		FUNC1(sc);

		return (error);

	case SIBA_PMU_FIXED:
		FUNC1(sc);

		/* HT clock is always available, and fulfills any of the
		 * following clock requests */
		switch (clock) {
		case BHND_CLOCK_DYN:
		case BHND_CLOCK_ILP:
		case BHND_CLOCK_ALP:
		case BHND_CLOCK_HT:
			return (0);

		default:
			return (ENODEV);
		}
	}

	FUNC7("invalid PMU state: %d", dinfo->pmu_state);
}