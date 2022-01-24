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
typedef  int u_int8_t ;
struct ata_pci_controller {TYPE_1__* chip; } ;
struct ata_channel {int unit; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  max_dma; } ;

/* Variables and functions */
 int ATA_MODE_MASK ; 
 int ATA_UDMA0 ; 
 int ATA_WDMA2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int
FUNC5(device_t dev, int target, int mode)
{
    device_t parent = FUNC0(dev);
    struct ata_pci_controller *ctlr = FUNC1(parent);
    struct ata_channel *ch = FUNC1(dev);
    int devno = (ch->unit << 1) + target;

    mode = FUNC2(mode, ctlr->chip->max_dma);
    /* XXX SOS missing WDMA0+1 + PIO modes */
    if (mode >= ATA_WDMA2) {
	    u_int8_t reg54 = FUNC3(parent, 0x54, 1);
	    
	    reg54 &= ~(0x03 << (devno << 1));
	    if (mode >= ATA_UDMA0)
		reg54 |= (((mode & ATA_MODE_MASK) + 1) << (devno << 1));
	    FUNC4(parent, 0x54, reg54, 1);
	    FUNC4(parent, 0x4a, 0xa6, 1);
	    FUNC4(parent, 0x40 + (devno << 1), 0x0301, 2);
    }
    /* we could set PIO mode timings, but we assume the BIOS did that */
    return (mode);
}