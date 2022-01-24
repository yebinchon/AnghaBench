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
struct TYPE_2__ {int r_irq_rid; int /*<<< orphan*/  handle; int /*<<< orphan*/  r_irq; } ;
struct siis_controller {int quirks; TYPE_1__ irq; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_INTR_FLAGS ; 
 int ENXIO ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int SIIS_Q_NOMSI ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct siis_controller*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct siis_controller* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  siis_intr ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct siis_controller *ctlr = FUNC3(dev);
	int msi = ctlr->quirks & SIIS_Q_NOMSI ? 0 : 1;

	/* Process hints. */
	FUNC9(FUNC2(dev),
	    FUNC4(dev), "msi", &msi);
	if (msi < 0)
		msi = 0;
	else if (msi > 0)
		msi = FUNC6(1, FUNC8(dev));
	/* Allocate MSI if needed/present. */
	if (msi && FUNC7(dev, &msi) != 0)
		msi = 0;
	/* Allocate all IRQs. */
	ctlr->irq.r_irq_rid = msi ? 1 : 0;
	if (!(ctlr->irq.r_irq = FUNC0(dev, SYS_RES_IRQ,
	    &ctlr->irq.r_irq_rid, RF_SHAREABLE | RF_ACTIVE))) {
		FUNC5(dev, "unable to map interrupt\n");
		return ENXIO;
	}
	if ((FUNC1(dev, ctlr->irq.r_irq, ATA_INTR_FLAGS, NULL,
	    siis_intr, ctlr, &ctlr->irq.handle))) {
		/* SOS XXX release r_irq */
		FUNC5(dev, "unable to setup interrupt\n");
		return ENXIO;
	}
	return (0);
}