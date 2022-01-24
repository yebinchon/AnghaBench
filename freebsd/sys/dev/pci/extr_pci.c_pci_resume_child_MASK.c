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
 int /*<<< orphan*/  PCI_POWERSTATE_D0 ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct pci_devinfo* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct pci_devinfo*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct pci_devinfo*,int) ; 
 scalar_t__ pci_do_power_resume ; 
 scalar_t__ pci_do_power_suspend ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource_list_entry* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC8(device_t dev, device_t child)
{
	struct pci_devinfo *dinfo;
	struct resource_list_entry *rle;

	if (pci_do_power_resume)
		FUNC6(dev, child, PCI_POWERSTATE_D0);

	dinfo = FUNC2(child);
	FUNC4(child, dinfo);
	if (!FUNC3(child))
		FUNC5(child, dinfo, 1);

	FUNC0(dev, child);

	/*
	 * Allow interrupts only after fully resuming the driver and hardware.
	 */
	if (pci_do_power_suspend) {
		/* See pci_suspend_child for details. */
		rle = FUNC7(&dinfo->resources, SYS_RES_IRQ, 0);
		if (rle != NULL && rle->res != NULL)
			(void)FUNC1(child, rle->res);
	}

	return (0);
}