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
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int*) ; 
 int CPUFREQ_FLAG_INFO_ONLY ; 
 int ENXIO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	device_t est_dev, perf_dev;
	int error, type;

	/*
	 * If the ACPI perf driver has attached and is not just offering
	 * info, let it manage things.  Also, if Enhanced SpeedStep is
	 * available, don't attach.
	 */
	perf_dev = FUNC1(FUNC2(dev), "acpi_perf", -1);
	if (perf_dev && FUNC3(perf_dev)) {
		error = FUNC0(perf_dev, &type);
		if (error == 0 && (type & CPUFREQ_FLAG_INFO_ONLY) == 0)
			return (ENXIO);
	}
	est_dev = FUNC1(FUNC2(dev), "est", -1);
	if (est_dev && FUNC3(est_dev))
		return (ENXIO);

	FUNC4(dev, "SpeedStep ICH");
	return (-1000);
}