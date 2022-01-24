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
struct pci_map {int pm_value; int /*<<< orphan*/  pm_reg; } ;
struct pci_devinfo {int /*<<< orphan*/  cfg; } ;
typedef  int pci_addr_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct pci_devinfo* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC5(device_t dev, struct pci_map *pm, pci_addr_t base)
{
	struct pci_devinfo *dinfo;
	int ln2range;

	/* The device ROM BAR is always a 32-bit memory BAR. */
	dinfo = FUNC1(dev);
	if (FUNC0(&dinfo->cfg, pm->pm_reg))
		ln2range = 32;
	else
		ln2range = FUNC2(pm->pm_value);
	FUNC4(dev, pm->pm_reg, base, 4);
	if (ln2range == 64)
		FUNC4(dev, pm->pm_reg + 4, base >> 32, 4);
	pm->pm_value = FUNC3(dev, pm->pm_reg, 4);
	if (ln2range == 64)
		pm->pm_value |= (pci_addr_t)FUNC3(dev,
		    pm->pm_reg + 4, 4) << 32;
}