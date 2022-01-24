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
struct malo_product {scalar_t__ mp_vendorid; scalar_t__ mp_deviceid; int /*<<< orphan*/  mp_name; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct malo_product* malo_products ; 
 int FUNC1 (struct malo_product*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct malo_product *mp;
	uint16_t vendor, devid;
	int i;

	vendor = FUNC3(dev);
	devid = FUNC2(dev);
	mp = malo_products;

	for (i = 0; i < FUNC1(malo_products); i++, mp++) {
		if (vendor == mp->mp_vendorid && devid == mp->mp_deviceid) {
			FUNC0(dev, mp->mp_name);
			return (BUS_PROBE_DEFAULT);
		}
	}

	return (ENXIO);
}