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
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_QUIRK_ENABLE_MSI_VM ; 
 scalar_t__ VM_GUEST_NO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_honor_msi_blacklist ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ pcie_chipset ; 
 scalar_t__ pcix_chipset ; 
 scalar_t__ vm_guest ; 

__attribute__((used)) static int
FUNC4(void)
{
	device_t dev;

	if (!pci_honor_msi_blacklist)
		return (0);

	/* Blacklist all non-PCI-express and non-PCI-X chipsets. */
	if (!(pcie_chipset || pcix_chipset)) {
		if (vm_guest != VM_GUEST_NO) {
			/*
			 * Whitelist older chipsets in virtual
			 * machines known to support MSI.
			 */
			dev = FUNC0(0, 0, 0);
			if (dev != NULL)
				return (!FUNC2(FUNC1(dev),
					PCI_QUIRK_ENABLE_MSI_VM));
		}
		return (1);
	}

	dev = FUNC0(0, 0, 0);
	if (dev != NULL)
		return (FUNC3(dev));
	return (0);
}