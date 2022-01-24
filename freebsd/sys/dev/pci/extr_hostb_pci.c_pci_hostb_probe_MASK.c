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
typedef  int u_int32_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ PCIC_BRIDGE ; 
 scalar_t__ PCIS_BRIDGE_HOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	u_int32_t id;

	id = FUNC3(dev);

	switch (id) {

	/* VIA VT82C596 Power Management Function */
	case 0x30501106:
		return (ENXIO);

	default:
		break;
	}

	if (FUNC2(dev) == PCIC_BRIDGE &&
	    FUNC4(dev) == PCIS_BRIDGE_HOST) {
		FUNC1(dev, "Host to PCI bridge");
		FUNC0(dev);
		return (-10000);
	}
	return (ENXIO);
}