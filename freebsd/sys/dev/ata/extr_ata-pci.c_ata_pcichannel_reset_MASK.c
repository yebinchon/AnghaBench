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
struct ata_pci_controller {int /*<<< orphan*/  (* reset ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  (* reset ) (int /*<<< orphan*/ ) ;} ;
struct ata_channel {TYPE_1__ dma; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(device_t dev)
{
    struct ata_pci_controller *ctlr = FUNC2(FUNC1(dev));
    struct ata_channel *ch = FUNC2(dev);

    /* if DMA engine present reset it  */
    if (ch->dma.reset)
	ch->dma.reset(dev);

    /* reset the controller HW */
    if (ctlr->reset)
	ctlr->reset(dev);
    else
	FUNC0(dev);
}