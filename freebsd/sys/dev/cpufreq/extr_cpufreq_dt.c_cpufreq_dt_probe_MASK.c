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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_GENERIC ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	phandle_t node;

	node = FUNC3(FUNC1(dev));

	if (!FUNC0(node, "clocks") ||
	    (!FUNC0(node, "cpu-supply") &&
	    !FUNC0(node, "cpu0-supply")))

		return (ENXIO);

	if (!FUNC0(node, "operating-points") &&
	  !FUNC0(node, "operating-points-v2"))
		return (ENXIO);

	FUNC2(dev, "Generic cpufreq driver");
	return (BUS_PROBE_GENERIC);
}