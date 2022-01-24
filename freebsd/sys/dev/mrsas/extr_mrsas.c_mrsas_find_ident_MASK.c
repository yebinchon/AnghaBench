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
struct mrsas_ident {scalar_t__ vendor; scalar_t__ device; int subvendor; int subdevice; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct mrsas_ident* device_table ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mrsas_ident *
FUNC4(device_t dev)
{
	struct mrsas_ident *pci_device;

	for (pci_device = device_table; pci_device->vendor != 0; pci_device++) {
		if ((pci_device->vendor == FUNC3(dev)) &&
		    (pci_device->device == FUNC0(dev)) &&
		    ((pci_device->subvendor == FUNC2(dev)) ||
		    (pci_device->subvendor == 0xffff)) &&
		    ((pci_device->subdevice == FUNC1(dev)) ||
		    (pci_device->subdevice == 0xffff)))
			return (pci_device);
	}
	return (NULL);
}