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
 int BUS_PROBE_NOWILDCARD ; 
 int ENXIO ; 
 int TYPE_NONE ; 
 int /*<<< orphan*/ * desc_strings ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	int chiptype, goodrv;

#ifdef FDT
	if (!ofw_bus_status_okay(dev))
		return (ENXIO);
	goodrv = BUS_PROBE_GENERIC;
#else
	goodrv = BUS_PROBE_NOWILDCARD;
#endif

	chiptype = FUNC1(dev);
	if (chiptype == TYPE_NONE)
		return (ENXIO);

	FUNC0(dev, desc_strings[chiptype]);
	return (goodrv);
}