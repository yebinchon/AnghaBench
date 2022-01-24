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
struct ahci_controller {int numirqs; int /*<<< orphan*/ * r_mem; scalar_t__ r_rid; int /*<<< orphan*/  quirks; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AHCI_Q_2CH ; 
 int /*<<< orphan*/  AHCI_Q_MRVL_SR_DEL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ahci_controller*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 struct ahci_controller* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct ahci_controller *ctlr;
	int rc;

	ctlr = FUNC5(dev);
	ctlr->dev = dev;
	ctlr->r_rid = 0;
	ctlr->quirks = AHCI_Q_2CH;
	ctlr->numirqs = 1;

	if (FUNC7(dev, "marvell,armada-380-ahci"))
		ctlr->quirks |= AHCI_Q_MRVL_SR_DEL;

	/* Allocate memory for controller */
	ctlr->r_mem = FUNC3(dev, SYS_RES_MEMORY,
	    &ctlr->r_rid, RF_ACTIVE | RF_SHAREABLE);
	if (ctlr->r_mem == NULL) {
		FUNC6(dev, "Failed to alloc memory for controller\n");
		return (ENOMEM);
	}

	/* Reset controller */
	rc = FUNC1(dev);
	if (rc != 0) {
		FUNC6(dev, "Failed to reset controller\n");
		FUNC4(dev, SYS_RES_MEMORY, ctlr->r_rid, ctlr->r_mem);
		return (ENXIO);
	}

	FUNC2(ctlr);

	rc = FUNC0(dev);
	if (rc != 0) {
		FUNC6(dev, "Failed to initialize AHCI, with error %d\n", rc);
		return (ENXIO);
	}

	return (0);
}