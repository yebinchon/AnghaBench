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
struct TYPE_2__ {int r_irq_rid; int /*<<< orphan*/ * r_irq; int /*<<< orphan*/  handle; } ;
struct mvs_controller {int msi; TYPE_1__ irq; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_INTR_FLAGS ; 
 int ENXIO ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mvs_controller*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct mvs_controller* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mvs_intr ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct mvs_controller *ctlr = FUNC4(dev);
	int msi = 0;

	/* Process hints. */
	FUNC10(FUNC3(dev),
	    FUNC5(dev), "msi", &msi);
	if (msi < 0)
		msi = 0;
	else if (msi > 0)
		msi = FUNC7(1, FUNC9(dev));
	/* Allocate MSI if needed/present. */
	if (msi && FUNC8(dev, &msi) != 0)
		msi = 0;
	ctlr->msi = msi;
	/* Allocate all IRQs. */
	ctlr->irq.r_irq_rid = msi ? 1 : 0;
	if (!(ctlr->irq.r_irq = FUNC0(dev, SYS_RES_IRQ,
	    &ctlr->irq.r_irq_rid, RF_SHAREABLE | RF_ACTIVE))) {
		FUNC6(dev, "unable to map interrupt\n");
		return (ENXIO);
	}
	if ((FUNC2(dev, ctlr->irq.r_irq, ATA_INTR_FLAGS, NULL,
	    mvs_intr, ctlr, &ctlr->irq.handle))) {
		FUNC6(dev, "unable to setup interrupt\n");
		FUNC1(dev, SYS_RES_IRQ,
		    ctlr->irq.r_irq_rid, ctlr->irq.r_irq);
		ctlr->irq.r_irq = NULL;
		return (ENXIO);
	}
	return (0);
}