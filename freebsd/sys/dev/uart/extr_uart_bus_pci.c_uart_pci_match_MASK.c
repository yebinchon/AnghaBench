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
struct pci_id {int vendor; scalar_t__ device; int subven; scalar_t__ subdev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) const static struct pci_id *
FUNC4(device_t dev, const struct pci_id *id)
{
	uint16_t device, subdev, subven, vendor;

	vendor = FUNC3(dev);
	device = FUNC0(dev);
	while (id->vendor != 0xffff &&
	    (id->vendor != vendor || id->device != device))
		id++;
	if (id->vendor == 0xffff)
		return (NULL);
	if (id->subven == 0xffff)
		return (id);
	subven = FUNC2(dev);
	subdev = FUNC1(dev);
	while (id->vendor == vendor && id->device == device &&
	    (id->subven != subven || id->subdev != subdev))
		id++;
	return ((id->vendor == vendor && id->device == device) ? id : NULL);
}