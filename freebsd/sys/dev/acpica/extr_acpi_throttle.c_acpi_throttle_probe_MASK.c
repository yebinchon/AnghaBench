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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{

	if (FUNC3("acpi_throttle", 0))
		return (ENXIO);

	/*
	 * On i386 platforms at least, ACPI throttling is accomplished by
	 * the chipset modulating the STPCLK# pin based on the duty cycle.
	 * Since p4tcc uses the same mechanism (but internal to the CPU),
	 * we disable acpi_throttle when p4tcc is also present.
	 */
	if (FUNC0(FUNC1(dev), "p4tcc", -1) &&
	    !FUNC3("p4tcc", 0))
		return (ENXIO);

	FUNC2(dev, "ACPI CPU Throttling");
	return (0);
}