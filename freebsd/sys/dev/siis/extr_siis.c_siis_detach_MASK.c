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
struct TYPE_2__ {scalar_t__ r_irq; int /*<<< orphan*/  r_irq_rid; int /*<<< orphan*/  handle; } ;
struct siis_controller {scalar_t__ r_gmem; int /*<<< orphan*/  r_grid; scalar_t__ r_mem; int /*<<< orphan*/  r_rid; int /*<<< orphan*/  sc_iomem; TYPE_1__ irq; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct siis_controller* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct siis_controller *ctlr = FUNC3(dev);

	/* Detach & delete all children */
	FUNC2(dev);

	/* Free interrupts. */
	if (ctlr->irq.r_irq) {
		FUNC1(dev, ctlr->irq.r_irq,
		    ctlr->irq.handle);
		FUNC0(dev, SYS_RES_IRQ,
		    ctlr->irq.r_irq_rid, ctlr->irq.r_irq);
	}
	FUNC4(dev);
	/* Free memory. */
	FUNC5(&ctlr->sc_iomem);
	FUNC0(dev, SYS_RES_MEMORY, ctlr->r_rid, ctlr->r_mem);
	FUNC0(dev, SYS_RES_MEMORY, ctlr->r_grid, ctlr->r_gmem);
	return (0);
}