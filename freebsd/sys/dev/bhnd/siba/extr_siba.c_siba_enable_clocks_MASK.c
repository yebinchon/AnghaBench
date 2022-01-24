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
typedef  int uint32_t ;
struct siba_softc {int dummy; } ;
struct siba_devinfo {int pmu_state; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int BHND_CLOCK_ALP ; 
 int BHND_CLOCK_DYN ; 
 int BHND_CLOCK_HT ; 
 int BHND_CLOCK_ILP ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct siba_softc*) ; 
#define  SIBA_PMU_BHND 131 
#define  SIBA_PMU_FIXED 130 
#define  SIBA_PMU_NONE 129 
#define  SIBA_PMU_PWRCTL 128 
 int /*<<< orphan*/  FUNC1 (struct siba_softc*) ; 
 int FUNC2 (scalar_t__,scalar_t__,int) ; 
 struct siba_devinfo* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 struct siba_softc* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

__attribute__((used)) static int
FUNC9(device_t dev, device_t child, uint32_t clocks)
{
	struct siba_softc	*sc;
	struct siba_devinfo	*dinfo;

	if (FUNC5(child) != dev)
		return (EINVAL);

	sc = FUNC6(dev);
	dinfo = FUNC3(child);

	FUNC0(sc);
	switch(dinfo->pmu_state) {
	case SIBA_PMU_NONE:
		FUNC8("no active PMU request state");

		FUNC1(sc);
		return (ENXIO);

	case SIBA_PMU_BHND:
		FUNC1(sc);
		return (FUNC2(dev, child, clocks));

	case SIBA_PMU_PWRCTL:
	case SIBA_PMU_FIXED:
		FUNC1(sc);

		/* All (supported) clocks are already enabled by default */
		clocks &= ~(BHND_CLOCK_DYN |
			    BHND_CLOCK_ILP |
			    BHND_CLOCK_ALP |
			    BHND_CLOCK_HT);

		if (clocks != 0) {
			FUNC7(dev, "%s requested unknown clocks: %#x\n",
			    FUNC4(child), clocks);
			return (ENODEV);
		}

		return (0);
	}

	FUNC8("invalid PMU state: %d", dinfo->pmu_state);
}