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
 scalar_t__ S390_ADDR ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{

#ifdef FDT
	if (!ofw_bus_status_okay(dev))
		return (ENXIO);

	if (!ofw_bus_is_compatible(dev, "sii,s35390a"))
		return (ENXIO);
#else
	if (FUNC2(dev) != S390_ADDR) {
		if (bootverbose)
			FUNC0(dev, "slave address mismatch. "
			    "(%02x != %02x)\n", FUNC2(dev),
			    S390_ADDR);
		return (ENXIO);
	}
#endif
	FUNC1(dev, "Seiko Instruments S-35390A RTC");

	return (BUS_PROBE_DEFAULT);
}