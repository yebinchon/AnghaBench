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
 int BUS_PROBE_GENERIC ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
 
	if (!FUNC4(dev))
		return (ENXIO);

	/*
	 * FDT data puts a "simple-bus" compatible string on many things that
	 * have children but aren't really buses in our world.  Without a
	 * ranges property we will fail to attach, so just fail to probe too.
	 */
	if (!(FUNC3(dev, "simple-bus") &&
	    FUNC2(dev, "ranges")) &&
	    (FUNC1(dev) == NULL || FUNC5(FUNC1(dev),
	     "soc") != 0))
		return (ENXIO);

	FUNC0(dev, "Flattened device tree simple bus");

	return (BUS_PROBE_GENERIC);
}