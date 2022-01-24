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
struct ahci_controller {int numirqs; int /*<<< orphan*/  ch_mtx; int /*<<< orphan*/  sc_iomem; int /*<<< orphan*/  dma_tag; TYPE_1__* irqs; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ r_irq; int /*<<< orphan*/  r_irq_rid; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct ahci_controller* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(device_t dev)
{
	struct ahci_controller *ctlr = FUNC5(dev);
	int i;

	/* Detach & delete all children */
	FUNC4(dev);

	/* Free interrupts. */
	for (i = 0; i < ctlr->numirqs; i++) {
		if (ctlr->irqs[i].r_irq) {
			FUNC3(dev, ctlr->irqs[i].r_irq,
			    ctlr->irqs[i].handle);
			FUNC2(dev, SYS_RES_IRQ,
			    ctlr->irqs[i].r_irq_rid, ctlr->irqs[i].r_irq);
		}
	}
	FUNC1(ctlr->dma_tag);
	/* Free memory. */
	FUNC7(&ctlr->sc_iomem);
	FUNC0(dev);
	FUNC6(&ctlr->ch_mtx);
	return (0);
}