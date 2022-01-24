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
struct ata_pci_controller {int r_irq_rid; int /*<<< orphan*/  r_irq; int /*<<< orphan*/  handle; int /*<<< orphan*/  legacy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_INTR_FLAGS ; 
 int ATA_IRQ_RID ; 
 int ENXIO ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,struct ata_pci_controller*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct ata_pci_controller* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 

int
FUNC11(device_t dev, void *intr_func)
{
    struct ata_pci_controller *ctlr = FUNC4(dev);
    int i, msi = 0;

    if (!ctlr->legacy) {
	if (FUNC10(FUNC3(dev),
		FUNC5(dev), "msi", &i) == 0 && i != 0)
	    msi = 1;
	if (msi && FUNC8(dev) > 0 && FUNC7(dev, &msi) == 0) {
	    ctlr->r_irq_rid = 0x1;
	} else {
	    msi = 0;
	    ctlr->r_irq_rid = ATA_IRQ_RID;
	}
	if (!(ctlr->r_irq = FUNC0(dev, SYS_RES_IRQ,
		&ctlr->r_irq_rid, RF_SHAREABLE | RF_ACTIVE))) {
	    FUNC6(dev, "unable to map interrupt\n");
	    if (msi)
		    FUNC9(dev);
	    return ENXIO;
	}
	if ((FUNC2(dev, ctlr->r_irq, ATA_INTR_FLAGS, NULL,
			    intr_func, ctlr, &ctlr->handle))) {
	    FUNC6(dev, "unable to setup interrupt\n");
	    FUNC1(dev,
		SYS_RES_IRQ, ctlr->r_irq_rid, ctlr->r_irq);
	    if (msi)
		    FUNC9(dev);
	    return ENXIO;
	}
    }
    return 0;
}