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
typedef  scalar_t__ uint16_t ;
struct age_dev {scalar_t__ age_vendorid; scalar_t__ age_deviceid; int /*<<< orphan*/  age_name; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 struct age_dev* age_devs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct age_dev*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct age_dev *sp;
	int i;
	uint16_t vendor, devid;

	vendor = FUNC3(dev);
	devid = FUNC2(dev);
	sp = age_devs;
	for (i = 0; i < FUNC1(age_devs); i++, sp++) {
		if (vendor == sp->age_vendorid &&
		    devid == sp->age_deviceid) {
			FUNC0(dev, sp->age_name);
			return (BUS_PROBE_DEFAULT);
		}
	}

	return (ENXIO);
}