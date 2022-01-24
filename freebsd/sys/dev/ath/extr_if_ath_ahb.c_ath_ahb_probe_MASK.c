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
 int AR9130_DEVID ; 
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 int VENDOR_ATHEROS ; 
 char* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	int vendor_id, device_id;
	const char* devname;

	/*
	 * Check if a device/vendor ID is provided in hints.
	 */
	if (FUNC5(FUNC1(dev), FUNC2(dev),
	    "vendor_id", &vendor_id) != 0) {
		vendor_id = VENDOR_ATHEROS;
	}

	if (FUNC5(FUNC1(dev), FUNC2(dev),
	    "device_id", &device_id) != 0) {
		device_id = AR9130_DEVID;
	}

	FUNC3(dev, "Vendor=0x%04x, Device=0x%04x\n",
	    vendor_id & 0xffff,
	    device_id & 0xffff);

	/* Attempt to probe */
	devname = FUNC0(vendor_id, device_id);

	if (devname != NULL) {
		FUNC4(dev, devname);
		return BUS_PROBE_DEFAULT;
	}
	return ENXIO;
}