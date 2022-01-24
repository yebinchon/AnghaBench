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
typedef  int /*<<< orphan*/  u_int ;
struct siba_softc {int dummy; } ;
struct siba_devinfo {int pmu_state; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
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
 struct siba_devinfo* FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 struct siba_softc* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static int
FUNC7(device_t dev, device_t child, u_int rsrc)
{
	struct siba_softc	*sc;
	struct siba_devinfo	*dinfo;

	if (FUNC4(child) != dev)
		return (EINVAL);

	sc = FUNC5(dev);
	dinfo = FUNC3(child);

	FUNC0(sc);
	switch(dinfo->pmu_state) {
	case SIBA_PMU_NONE:
		FUNC6("no active PMU request state");

		FUNC1(sc);
		return (ENXIO);

	case SIBA_PMU_BHND:
		FUNC1(sc);
		return (FUNC2(dev, child, rsrc));

	case SIBA_PMU_PWRCTL:
	case SIBA_PMU_FIXED:
		/* HW does not support per-core external resources */
		FUNC1(sc);
		return (ENODEV);
	}

	FUNC6("invalid PMU state: %d", dinfo->pmu_state);
}