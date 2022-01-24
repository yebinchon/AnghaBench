#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u_int ;
struct pcicfg_msix {int msix_ctrl; scalar_t__ msix_location; } ;
struct TYPE_2__ {struct pcicfg_msix msix; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int PCIM_MSIXCTRL_MSIX_ENABLE ; 
 scalar_t__ PCIR_MSIX_CTRL ; 
 struct pci_devinfo* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ pci_msix_rewrite_table ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(device_t dev, device_t child, u_int index,
    uint64_t address, uint32_t data)
{

	if (pci_msix_rewrite_table) {
		struct pci_devinfo *dinfo = FUNC0(child);
		struct pcicfg_msix *msix = &dinfo->cfg.msix;

		/*
		 * Some VM hosts require MSIX to be disabled in the
		 * control register before updating the MSIX table
		 * entries are allowed. It is not enough to only
		 * disable MSIX while updating a single entry. MSIX
		 * must be disabled while updating all entries in the
		 * table.
		 */
		FUNC3(child,
		    msix->msix_location + PCIR_MSIX_CTRL,
		    msix->msix_ctrl & ~PCIM_MSIXCTRL_MSIX_ENABLE, 2);
		FUNC2(child);
	} else
		FUNC4(child, index, address, data);

	/* Enable MSI -> HT mapping. */
	FUNC1(child, address);
}