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
typedef  int uint16_t ;
struct pci_map {int pm_value; int /*<<< orphan*/  pm_reg; } ;
struct pci_devinfo {int /*<<< orphan*/  cfg; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int PCIM_BIOS_ENABLE ; 
 int PCIM_CMD_MEMEN ; 
 int PCIM_CMD_PORTEN ; 
 int /*<<< orphan*/  PCIR_COMMAND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 struct pci_devinfo* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC4(device_t dev, struct pci_map *pm)
{
	struct pci_devinfo *dinfo;
	uint16_t cmd;

	dinfo = FUNC2(dev);
	if (FUNC0(&dinfo->cfg, pm->pm_reg) &&
	    !(pm->pm_value & PCIM_BIOS_ENABLE))
		return (0);
	cmd = FUNC3(dev, PCIR_COMMAND, 2);
	if (FUNC0(&dinfo->cfg, pm->pm_reg) || FUNC1(pm->pm_value))
		return ((cmd & PCIM_CMD_MEMEN) != 0);
	else
		return ((cmd & PCIM_CMD_PORTEN) != 0);
}