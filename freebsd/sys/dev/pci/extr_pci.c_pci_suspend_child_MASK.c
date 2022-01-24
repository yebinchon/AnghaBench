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
struct resource_list_entry {int /*<<< orphan*/ * res; } ;
struct pci_devinfo {int /*<<< orphan*/  resources; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_POWERSTATE_D3 ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct pci_devinfo* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct pci_devinfo*,int /*<<< orphan*/ ) ; 
 scalar_t__ pci_do_power_suspend ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource_list_entry* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC6(device_t dev, device_t child)
{
	struct pci_devinfo *dinfo;
	struct resource_list_entry *rle;
	int error;

	dinfo = FUNC2(child);

	/*
	 * Save the PCI configuration space for the child and set the
	 * device in the appropriate power state for this sleep state.
	 */
	FUNC3(child, dinfo, 0);

	/* Suspend devices before potentially powering them down. */
	error = FUNC0(dev, child);

	if (error)
		return (error);

	if (pci_do_power_suspend) {
		/*
		 * Make sure this device's interrupt handler is not invoked
		 * in the case the device uses a shared interrupt that can
		 * be raised by some other device.
		 * This is applicable only to regular (legacy) PCI interrupts
		 * as MSI/MSI-X interrupts are never shared.
		 */
		rle = FUNC5(&dinfo->resources,
		    SYS_RES_IRQ, 0);
		if (rle != NULL && rle->res != NULL)
			(void)FUNC1(child, rle->res);
		FUNC4(dev, child, PCI_POWERSTATE_D3);
	}

	return (0);
}