#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ata_pci_controller {TYPE_2__* chip; } ;
struct TYPE_4__ {int /*<<< orphan*/  status; } ;
struct TYPE_6__ {int /*<<< orphan*/  reset; int /*<<< orphan*/  stop; int /*<<< orphan*/  start; } ;
struct ata_channel {int /*<<< orphan*/  flags; TYPE_1__ hw; TYPE_3__ dma; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_5__ {scalar_t__ cfg1; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_CHECKS_CABLE ; 
 int /*<<< orphan*/  ATA_NO_ATAPI_DMA ; 
 int ENXIO ; 
 scalar_t__ PR_NEW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ata_promise_dmareset ; 
 int /*<<< orphan*/  ata_promise_dmastart ; 
 int /*<<< orphan*/  ata_promise_dmastop ; 
 int /*<<< orphan*/  ata_promise_status ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
    struct ata_pci_controller *ctlr = FUNC2(FUNC1(dev));
    struct ata_channel *ch = FUNC2(dev);

    if (FUNC0(dev))
	return ENXIO;

    if (ctlr->chip->cfg1 == PR_NEW) {
        ch->dma.start = ata_promise_dmastart;
        ch->dma.stop = ata_promise_dmastop;
        ch->dma.reset = ata_promise_dmareset;
    }

    ch->hw.status = ata_promise_status;
    ch->flags |= ATA_NO_ATAPI_DMA;
    ch->flags |= ATA_CHECKS_CABLE;
    return 0;
}