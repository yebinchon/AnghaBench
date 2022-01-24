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
struct ata_pci_controller {scalar_t__ r_irq_rid; scalar_t__ r_rid2; scalar_t__ r_rid1; scalar_t__ r_res1; int /*<<< orphan*/  r_type1; scalar_t__ r_res2; int /*<<< orphan*/  r_type2; int /*<<< orphan*/  (* chipdeinit ) (int /*<<< orphan*/ ) ;scalar_t__ r_irq; int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ ATA_IRQ_RID ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct ata_pci_controller* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int
FUNC10(device_t dev)
{
    struct ata_pci_controller *ctlr = FUNC4(dev);

    /* detach & delete all children */
    FUNC3(dev);

    if (ctlr->r_irq) {
	FUNC2(dev, ctlr->r_irq, ctlr->handle);
	FUNC0(dev, SYS_RES_IRQ, ctlr->r_irq_rid, ctlr->r_irq);
	if (ctlr->r_irq_rid != ATA_IRQ_RID)
	    FUNC5(dev);
    }
    if (ctlr->chipdeinit != NULL)
	ctlr->chipdeinit(dev);
    if (ctlr->r_res2) {
#ifdef __sparc64__
	bus_space_unmap(rman_get_bustag(ctlr->r_res2),
	    rman_get_bushandle(ctlr->r_res2), rman_get_size(ctlr->r_res2));
#endif
	FUNC0(dev, ctlr->r_type2, ctlr->r_rid2, ctlr->r_res2);
    }
    if (ctlr->r_res1) {
#ifdef __sparc64__
	bus_space_unmap(rman_get_bustag(ctlr->r_res1),
	    rman_get_bushandle(ctlr->r_res1), rman_get_size(ctlr->r_res1));
#endif
	FUNC0(dev, ctlr->r_type1, ctlr->r_rid1, ctlr->r_res1);
    }

    return 0;
}