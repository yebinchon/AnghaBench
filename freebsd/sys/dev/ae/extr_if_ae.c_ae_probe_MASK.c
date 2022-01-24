#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ vendorid; scalar_t__ deviceid; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int AE_DEVS_COUNT ; 
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 TYPE_1__* ae_devs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	uint16_t deviceid, vendorid;
	int i;

	vendorid = FUNC2(dev);
	deviceid = FUNC1(dev);

	/*
	 * Search through the list of supported devs for matching one.
	 */
	for (i = 0; i < AE_DEVS_COUNT; i++) {
		if (vendorid == ae_devs[i].vendorid &&
		    deviceid == ae_devs[i].deviceid) {
			FUNC0(dev, ae_devs[i].name);
			return (BUS_PROBE_DEFAULT);
		}
	}
	return (ENXIO);
}