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
typedef  int uint64_t ;
struct TYPE_2__ {scalar_t__ freq; } ;
struct cf_level {TYPE_1__ total_set; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct cf_level*,int*) ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cf_level*,int /*<<< orphan*/ ) ; 
 struct cf_level* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  rdtsc ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC7(void *arg, int unit)
{
	device_t cf_dev;
	struct cf_level *levels;
	int count, error;
	uint64_t max_freq;

	/* Only use values from the first CPU, assuming all are equal. */
	if (unit != 0)
		return;

	/* Find the appropriate cpufreq device instance. */
	cf_dev = FUNC2(FUNC1("cpufreq"), unit);
	if (cf_dev == NULL) {
		FUNC5("tsc_levels_changed() called but no cpufreq device?\n");
		return;
	}

	/* Get settings from the device and find the max frequency. */
	count = 64;
	levels = FUNC4(count * sizeof(*levels), M_TEMP, M_NOWAIT);
	if (levels == NULL)
		return;
	error = FUNC0(cf_dev, levels, &count);
	if (error == 0 && count != 0) {
		max_freq = (uint64_t)levels[0].total_set.freq * 1000000;
		FUNC6(rdtsc, max_freq, 1);
	} else
		FUNC5("tsc_levels_changed: no max freq found\n");
	FUNC3(levels, M_TEMP);
}