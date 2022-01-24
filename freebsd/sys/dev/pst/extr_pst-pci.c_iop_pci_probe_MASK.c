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
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
    /* tested with actual hardware kindly donated by Promise */
    if (FUNC1(dev) == 0x19628086 && FUNC2(dev) == 0x105a) {
	FUNC0(dev, "Promise SuperTrak SX6000 ATA RAID controller");
	return BUS_PROBE_DEFAULT;
    } 

    /* support the older SuperTrak 100 as well */
    if (FUNC1(dev) == 0x19608086 && FUNC2(dev) == 0x105a) {
	FUNC0(dev, "Promise SuperTrak 100 ATA RAID controller");
	return BUS_PROBE_DEFAULT;
    } 

    return ENXIO;
}