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
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ***,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

int
FUNC8(device_t dev)
{
	device_t cf_dev, *devs;
	int cfcount, devcount, error, i, type;

	/*
	 * If this is the last cpufreq child device, remove the control
	 * device as well.  We identify cpufreq children by calling a method
	 * they support.
	 */
	error = FUNC3(FUNC4(dev), &devs, &devcount);
	if (error)
		return (error);
	cf_dev = FUNC2(FUNC4(dev), "cpufreq", -1);
	if (cf_dev == NULL) {
		FUNC6(dev,
	"warning: cpufreq_unregister called with no cpufreq device active\n");
		FUNC7(devs, M_TEMP);
		return (0);
	}
	cfcount = 0;
	for (i = 0; i < devcount; i++) {
		if (!FUNC5(devs[i]))
			continue;
		if (FUNC0(devs[i], &type) == 0)
			cfcount++;
	}
	if (cfcount <= 1)
		FUNC1(FUNC4(cf_dev), cf_dev);
	FUNC7(devs, M_TEMP);

	return (0);
}