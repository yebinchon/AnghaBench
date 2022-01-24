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
typedef  int /*<<< orphan*/  uint16_t ;
struct pcicfg_msi {int /*<<< orphan*/  msi_ctrl; scalar_t__ msi_location; } ;
struct TYPE_2__ {struct pcicfg_msi msi; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCIM_MSICTRL_MSI_ENABLE ; 
 scalar_t__ PCIR_MSI_CTRL ; 
 struct pci_devinfo* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 

void
FUNC2(device_t dev, device_t child, uint64_t address,
     uint16_t data)
{
	struct pci_devinfo *dinfo = FUNC0(child);
	struct pcicfg_msi *msi = &dinfo->cfg.msi;

	/* Enable MSI in the control register. */
	msi->msi_ctrl |= PCIM_MSICTRL_MSI_ENABLE;
	FUNC1(child, msi->msi_location + PCIR_MSI_CTRL,
	    msi->msi_ctrl, 2);
}