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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int /*<<< orphan*/  EST_TRANS_LAT ; 
 int /*<<< orphan*/  MSR_PERF_CTL ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(device_t dev, uint16_t id16, int need_check)
{
	uint64_t msr;
	uint16_t new_id16;
	int ret = 0;

	/* Read the current register, mask out the old, set the new id. */
	msr = FUNC3(MSR_PERF_CTL);
	msr = (msr & ~0xffff) | id16;
	FUNC4(MSR_PERF_CTL, msr);

	if  (need_check) {
		/* Wait a short while and read the new status. */
		FUNC0(EST_TRANS_LAT);
		FUNC2(&new_id16);
		if (new_id16 != id16) {
			if (bootverbose)
				FUNC1(dev, "Invalid id16 (set, cur) "
				    "= (%u, %u)\n", id16, new_id16);
			ret = ENXIO;
		}
	}
	return (ret);
}