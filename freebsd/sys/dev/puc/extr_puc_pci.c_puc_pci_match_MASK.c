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
struct puc_cfg {int vendor; scalar_t__ device; scalar_t__ subvendor; scalar_t__ subdevice; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct puc_cfg *
FUNC4(device_t dev, const struct puc_cfg *desc)
{
	uint16_t vendor, device;
	uint16_t subvendor, subdevice;

	vendor = FUNC3(dev);
	device = FUNC0(dev);
	subvendor = FUNC2(dev);
	subdevice = FUNC1(dev);

	while (desc->vendor != 0xffff) {
		if (desc->vendor == vendor && desc->device == device) {
			/* exact match */
			if (desc->subvendor == subvendor &&
		            desc->subdevice == subdevice)
				return (desc);
			/* wildcard match */
			if (desc->subvendor == 0xffff)
				return (desc);
		}
		desc++;
	}

	/* no match */
	return (NULL);
}