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
typedef  int uint8_t ;
struct ata_pci_controller {TYPE_1__* chip; } ;
struct ata_channel {int unit; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int cfg2; } ;

/* Variables and functions */
 int ATA_MODE_MASK ; 
 int ATA_PIO4 ; 
 int ATA_UDMA0 ; 
 int ATA_WDMA0 ; 
 int VIABAR ; 
 size_t FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int const,int) ; 

__attribute__((used)) static int
FUNC5(device_t dev, int target, int mode)
{
	device_t parent = FUNC2(dev);
	struct ata_pci_controller *ctlr = FUNC3(parent);
	struct ata_channel *ch = FUNC3(dev);

	if ((ctlr->chip->cfg2 & VIABAR) && (ch->unit > 1)) {
	    int piomode;
    	    static const uint8_t pio_timings[] =
		{ 0xa8, 0x65, 0x65, 0x32, 0x20 };
	    static const uint8_t dma_timings[] =
		{ 0xee, 0xe8, 0xe6, 0xe4, 0xe2, 0xe1, 0xe0 };

	    /* This chip can't do WDMA. */
	    if (mode >= ATA_WDMA0 && mode < ATA_UDMA0)
		mode = ATA_PIO4;
	    if (mode >= ATA_UDMA0) {
		FUNC4(parent, 0xb3,
				 dma_timings[mode & ATA_MODE_MASK], 1);
		piomode = ATA_PIO4;
	    } else
		piomode = mode;
	    FUNC4(parent, 0xab, pio_timings[FUNC0(piomode)], 1);
	} else
		mode = FUNC1(dev, target, mode);
	return (mode);
}