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
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  driver_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(driver_t *driver, device_t parent)
{
	phandle_t node;

	/* Properties must be listed under node /cpus/cpu@0 */
	node = FUNC4(parent);

	/* The cpu@0 node must have the following properties */
	if (!FUNC1(node, "clocks") ||
	    (!FUNC1(node, "cpu-supply") &&
	    !FUNC1(node, "cpu0-supply")))
		return;

	if (!FUNC1(node, "operating-points") &&
	    !FUNC1(node, "operating-points-v2"))
		return;

	if (FUNC2(parent, "cpufreq_dt", -1) != NULL)
		return;

	if (FUNC0(parent, 0, "cpufreq_dt", -1) == NULL)
		FUNC3(parent, "add cpufreq_dt child failed\n");
}