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
struct ahci_controller {int numirqs; int channels; int cccv; int quirks; TYPE_1__* irqs; scalar_t__ ccc; scalar_t__ msi; int /*<<< orphan*/  r_mem; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int r_irq_rid; scalar_t__ mode; int /*<<< orphan*/  handle; int /*<<< orphan*/  r_irq; struct ahci_controller* ctlr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHCI_GHC ; 
 int AHCI_GHC_MRSM ; 
 scalar_t__ AHCI_IRQ_MODE_AFTER ; 
 scalar_t__ AHCI_IRQ_MODE_ALL ; 
 scalar_t__ AHCI_IRQ_MODE_ONE ; 
 int AHCI_MAX_IRQS ; 
 int AHCI_Q_EDGEIS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATA_INTR_FLAGS ; 
 int ENXIO ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  ahci_intr ; 
 int /*<<< orphan*/  ahci_intr_one ; 
 int /*<<< orphan*/  ahci_intr_one_edge ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct ahci_controller* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

int
FUNC6(device_t dev)
{
	struct ahci_controller *ctlr = FUNC4(dev);
	int i;

	/* Check for single MSI vector fallback. */
	if (ctlr->numirqs > 1 &&
	    (FUNC0(ctlr->r_mem, AHCI_GHC) & AHCI_GHC_MRSM) != 0) {
		FUNC5(dev, "Falling back to one MSI\n");
		ctlr->numirqs = 1;
	}

	/* Ensure we don't overrun irqs. */
	if (ctlr->numirqs > AHCI_MAX_IRQS) {
		FUNC5(dev, "Too many irqs %d > %d (clamping)\n",
		    ctlr->numirqs, AHCI_MAX_IRQS);
		ctlr->numirqs = AHCI_MAX_IRQS;
	}

	/* Allocate all IRQs. */
	for (i = 0; i < ctlr->numirqs; i++) {
		ctlr->irqs[i].ctlr = ctlr;
		ctlr->irqs[i].r_irq_rid = i + (ctlr->msi ? 1 : 0);
		if (ctlr->channels == 1 && !ctlr->ccc && ctlr->msi)
			ctlr->irqs[i].mode = AHCI_IRQ_MODE_ONE;
		else if (ctlr->numirqs == 1 || i >= ctlr->channels ||
		    (ctlr->ccc && i == ctlr->cccv))
			ctlr->irqs[i].mode = AHCI_IRQ_MODE_ALL;
		else if (ctlr->channels > ctlr->numirqs &&
		    i == ctlr->numirqs - 1)
			ctlr->irqs[i].mode = AHCI_IRQ_MODE_AFTER;
		else
			ctlr->irqs[i].mode = AHCI_IRQ_MODE_ONE;
		if (!(ctlr->irqs[i].r_irq = FUNC1(dev, SYS_RES_IRQ,
		    &ctlr->irqs[i].r_irq_rid, RF_SHAREABLE | RF_ACTIVE))) {
			FUNC5(dev, "unable to map interrupt\n");
			return (ENXIO);
		}
		if ((FUNC3(dev, ctlr->irqs[i].r_irq, ATA_INTR_FLAGS, NULL,
		    (ctlr->irqs[i].mode != AHCI_IRQ_MODE_ONE) ? ahci_intr :
		     ((ctlr->quirks & AHCI_Q_EDGEIS) ? ahci_intr_one_edge :
		      ahci_intr_one),
		    &ctlr->irqs[i], &ctlr->irqs[i].handle))) {
			/* SOS XXX release r_irq */
			FUNC5(dev, "unable to setup interrupt\n");
			return (ENXIO);
		}
		if (ctlr->numirqs > 1) {
			FUNC2(dev, ctlr->irqs[i].r_irq,
			    ctlr->irqs[i].handle,
			    ctlr->irqs[i].mode == AHCI_IRQ_MODE_ONE ?
			    "ch%d" : "%d", i);
		}
	}
	return (0);
}