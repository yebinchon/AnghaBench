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
typedef  int uint64_t ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int*) ; 
 int CPUFREQ_FLAG_INFO_ONLY ; 
 int ENXIO ; 
 int /*<<< orphan*/  MSR_MISC_ENABLE ; 
 int MSR_SS_ENABLE ; 
 scalar_t__ bootverbose ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	device_t perf_dev;
	uint64_t msr;
	int error, type;

	if (FUNC7("est", 0))
		return (ENXIO);

	/*
	 * If the ACPI perf driver has attached and is not just offering
	 * info, let it manage things.
	 */
	perf_dev = FUNC1(FUNC2(dev), "acpi_perf", -1);
	if (perf_dev && FUNC3(perf_dev)) {
		error = FUNC0(perf_dev, &type);
		if (error == 0 && (type & CPUFREQ_FLAG_INFO_ONLY) == 0)
			return (ENXIO);
	}

	/* Attempt to enable SpeedStep if not currently enabled. */
	msr = FUNC6(MSR_MISC_ENABLE);
	if ((msr & MSR_SS_ENABLE) == 0) {
		FUNC8(MSR_MISC_ENABLE, msr | MSR_SS_ENABLE);
		if (bootverbose)
			FUNC4(dev, "enabling SpeedStep\n");

		/* Check if the enable failed. */
		msr = FUNC6(MSR_MISC_ENABLE);
		if ((msr & MSR_SS_ENABLE) == 0) {
			FUNC4(dev, "failed to enable SpeedStep\n");
			return (ENXIO);
		}
	}

	FUNC5(dev, "Enhanced SpeedStep Frequency Control");
	return (0);
}