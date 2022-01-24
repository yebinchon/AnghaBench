#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct resource_list {int dummy; } ;
struct TYPE_5__ {scalar_t__ msix_alloc; } ;
struct TYPE_4__ {scalar_t__ msi_alloc; } ;
struct TYPE_6__ {TYPE_2__ msix; TYPE_1__ msi; } ;
struct pci_devinfo {TYPE_3__ cfg; struct resource_list resources; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_RES_BUS ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 struct pci_devinfo* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct pci_devinfo*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct resource_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(device_t dev, device_t child)
{
	struct pci_devinfo *dinfo;
	struct resource_list *rl;

	dinfo = FUNC0(child);
	rl = &dinfo->resources;

	/*
	 * Have to deallocate IRQs before releasing any MSI messages and
	 * have to release MSI messages before deallocating any memory
	 * BARs.
	 */
	if (FUNC4(rl, dev, child, SYS_RES_IRQ) != 0)
		FUNC2(&dinfo->cfg, "Device leaked IRQ resources\n");
	if (dinfo->cfg.msi.msi_alloc != 0 || dinfo->cfg.msix.msix_alloc != 0) {
		FUNC2(&dinfo->cfg, "Device leaked MSI vectors\n");
		(void)FUNC3(child);
	}
	if (FUNC4(rl, dev, child, SYS_RES_MEMORY) != 0)
		FUNC2(&dinfo->cfg, "Device leaked memory resources\n");
	if (FUNC4(rl, dev, child, SYS_RES_IOPORT) != 0)
		FUNC2(&dinfo->cfg, "Device leaked I/O resources\n");
#ifdef PCI_RES_BUS
	if (resource_list_release_active(rl, dev, child, PCI_RES_BUS) != 0)
		pci_printf(&dinfo->cfg, "Device leaked PCI bus numbers\n");
#endif

	FUNC1(child, dinfo, 1);
}