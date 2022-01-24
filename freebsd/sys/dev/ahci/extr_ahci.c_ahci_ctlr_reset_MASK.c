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
struct ahci_controller {int quirks; int caps; int /*<<< orphan*/  r_mem; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AHCI_CAP ; 
 int /*<<< orphan*/  AHCI_GHC ; 
 int AHCI_GHC_AE ; 
 int AHCI_GHC_HR ; 
 int AHCI_Q_RESTORE_CAP ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int ENXIO ; 
 struct ahci_controller* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

int
FUNC5(device_t dev)
{
	struct ahci_controller *ctlr = FUNC3(dev);
	int timeout;

	/* Enable AHCI mode */
	FUNC1(ctlr->r_mem, AHCI_GHC, AHCI_GHC_AE);
	/* Reset AHCI controller */
	FUNC1(ctlr->r_mem, AHCI_GHC, AHCI_GHC_AE|AHCI_GHC_HR);
	for (timeout = 1000; timeout > 0; timeout--) {
		FUNC2(1000);
		if ((FUNC0(ctlr->r_mem, AHCI_GHC) & AHCI_GHC_HR) == 0)
			break;
	}
	if (timeout == 0) {
		FUNC4(dev, "AHCI controller reset failure\n");
		return (ENXIO);
	}
	/* Reenable AHCI mode */
	FUNC1(ctlr->r_mem, AHCI_GHC, AHCI_GHC_AE);

	if (ctlr->quirks & AHCI_Q_RESTORE_CAP) {
		/*
		 * Restore capability field.
		 * This is write to a read-only register to restore its state.
		 * On fully standard-compliant hardware this is not needed and
		 * this operation shall not take place. See ahci_pci.c for
		 * platforms using this quirk.
		 */
		FUNC1(ctlr->r_mem, AHCI_CAP, ctlr->caps);
	}

	return (0);
}