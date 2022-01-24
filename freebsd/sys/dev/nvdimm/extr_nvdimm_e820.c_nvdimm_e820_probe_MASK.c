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
 int BUS_PROBE_NOWILDCARD ; 
 int ENXIO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	/*
	 * nexus panics if a child doesn't have ivars.  BUS_ADD_CHILD uses
	 * nexus_add_child, which creates fuckin ivars.  but sometimes if you
	 * unload and reload nvdimm_e820, the device node stays but the ivars
	 * are deleted??? avoid trivial panic but this is a kludge.
	 */
	if (FUNC0(dev) == NULL)
		return (ENXIO);

	FUNC1(dev);
	FUNC2(dev, "Legacy e820 NVDIMM root device");
	return (BUS_PROBE_NOWILDCARD);
}