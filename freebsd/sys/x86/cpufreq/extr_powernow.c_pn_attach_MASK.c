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
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__,scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	int rv;
	device_t child;

	child = FUNC1(FUNC2(dev), "acpi_perf", -1);
	if (child) {
		rv = FUNC3(dev, child);
		if (rv)
			rv = FUNC4(dev);
	} else
		rv = FUNC4(dev);

	if (rv != 0)
		return (ENXIO);
	FUNC0(dev);
	return (0);
}