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
struct msk_product {scalar_t__ msk_vendorid; scalar_t__ msk_deviceid; int /*<<< orphan*/  msk_name; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct msk_product* msk_products ; 
 int FUNC1 (struct msk_product*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	const struct msk_product *mp;
	uint16_t vendor, devid;
	int i;

	vendor = FUNC3(dev);
	devid = FUNC2(dev);
	mp = msk_products;
	for (i = 0; i < FUNC1(msk_products); i++, mp++) {
		if (vendor == mp->msk_vendorid && devid == mp->msk_deviceid) {
			FUNC0(dev, mp->msk_name);
			return (BUS_PROBE_DEFAULT);
		}
	}

	return (ENXIO);
}