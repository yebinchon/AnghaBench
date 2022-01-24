#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ata_pci_controller {TYPE_2__* chip; } ;
struct TYPE_3__ {int max_iosize; } ;
struct ata_channel {int /*<<< orphan*/  flags; TYPE_1__ dma; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int cfg2; int chiprev; } ;

/* Variables and functions */
 int ALI_NEW ; 
 int /*<<< orphan*/  ATA_CHECKS_CABLE ; 
 int /*<<< orphan*/  ATA_NO_48BIT_DMA ; 
 int /*<<< orphan*/  ATA_NO_ATAPI_DMA ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
    struct ata_pci_controller *ctlr = FUNC2(FUNC1(dev));
    struct ata_channel *ch = FUNC2(dev);

    /* setup the usual register normal pci style */
    if (FUNC0(dev))
	return ENXIO;

    if (ctlr->chip->cfg2 & ALI_NEW && ctlr->chip->chiprev < 0xc7)
	ch->flags |= ATA_CHECKS_CABLE;
    /* older chips can't do 48bit DMA transfers */
    if (ctlr->chip->chiprev <= 0xc4) {
	ch->flags |= ATA_NO_48BIT_DMA;
	if (ch->dma.max_iosize > 256 * 512)
		ch->dma.max_iosize = 256 * 512;
    }
	if (ctlr->chip->cfg2 & ALI_NEW)
		ch->flags |= ATA_NO_ATAPI_DMA;

    return 0;
}