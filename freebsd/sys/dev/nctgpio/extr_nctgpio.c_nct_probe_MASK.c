#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {scalar_t__ chip_id; } ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 scalar_t__ NCT_LDN_GPIO ; 
 scalar_t__ SUPERIO_DEV_GPIO ; 
 scalar_t__ SUPERIO_VENDOR_NUVOTON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* nct_devs ; 
 int FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	int j;
	uint16_t chipid;

	if (FUNC5(dev) != SUPERIO_VENDOR_NUVOTON)
		return (ENXIO);
	if (FUNC4(dev) != SUPERIO_DEV_GPIO)
		return (ENXIO);

	/*
	 * There are several GPIO devices, we attach only to one of them
	 * and use the rest without attaching.
	 */
	if (FUNC3(dev) != NCT_LDN_GPIO)
		return (ENXIO);

	chipid = FUNC2(dev);
	for (j = 0; j < FUNC1(nct_devs); j++) {
		if (chipid == nct_devs[j].chip_id) {
			FUNC0(dev, "Nuvoton GPIO controller");
			return (BUS_PROBE_DEFAULT);
		}
	}
	return (ENXIO);
}