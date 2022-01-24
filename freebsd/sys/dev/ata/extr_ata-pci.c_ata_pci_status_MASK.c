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
struct ata_pci_controller {int /*<<< orphan*/  legacy; } ;
struct TYPE_2__ {int flags; } ;
struct ata_channel {int flags; TYPE_1__ dma; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_ALTSTAT ; 
 int ATA_ALWAYS_DMASTAT ; 
 int ATA_BMSTAT_ERROR ; 
 int ATA_BMSTAT_INTERRUPT ; 
 int ATA_BMSTAT_MASK ; 
 int /*<<< orphan*/  ATA_BMSTAT_PORT ; 
 int ATA_DMA_ACTIVE ; 
 int FUNC0 (struct ata_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_channel*,int /*<<< orphan*/ ,int) ; 
 int ATA_S_BUSY ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ dumping ; 

int
FUNC5(device_t dev)
{
    struct ata_pci_controller *controller =
	FUNC4(FUNC3(dev));
    struct ata_channel *ch = FUNC4(dev);

    if ((dumping || !controller->legacy) &&
	((ch->flags & ATA_ALWAYS_DMASTAT) ||
	 (ch->dma.flags & ATA_DMA_ACTIVE))) {
	int bmstat = FUNC0(ch, ATA_BMSTAT_PORT) & ATA_BMSTAT_MASK;

	if ((bmstat & ATA_BMSTAT_INTERRUPT) == 0)
	    return 0;
	FUNC1(ch, ATA_BMSTAT_PORT, bmstat & ~ATA_BMSTAT_ERROR);
	FUNC2(1);
    }
    if (FUNC0(ch, ATA_ALTSTAT) & ATA_S_BUSY) {
	FUNC2(100);
	if (FUNC0(ch, ATA_ALTSTAT) & ATA_S_BUSY)
	    return 0;
    }
    return 1;
}