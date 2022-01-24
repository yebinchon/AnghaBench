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
struct amdtemp_product {scalar_t__ amdtemp_vendorid; scalar_t__ amdtemp_deviceid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct amdtemp_product* amdtemp_products ; 
 int FUNC0 (struct amdtemp_product*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3(device_t dev, const struct amdtemp_product **product_out)
{
	int i;
	uint16_t vendor, devid;

	vendor = FUNC2(dev);
	devid = FUNC1(dev);

	for (i = 0; i < FUNC0(amdtemp_products); i++) {
		if (vendor == amdtemp_products[i].amdtemp_vendorid &&
		    devid == amdtemp_products[i].amdtemp_deviceid) {
			if (product_out != NULL)
				*product_out = &amdtemp_products[i];
			return (true);
		}
	}
	return (false);
}