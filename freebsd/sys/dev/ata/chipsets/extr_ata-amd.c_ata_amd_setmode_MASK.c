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
struct TYPE_2__ {int cfg1; int /*<<< orphan*/  max_dma; } ;

/* Variables and functions */
 int AMD_CABLE ; 
 int ATA_MODE_MASK ; 
 int ATA_PIO4 ; 
 int ATA_UDMA0 ; 
 int ATA_UDMA2 ; 
 scalar_t__ ata_dma_check_80pin ; 
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int const,int) ; 

__attribute__((used)) static int
FUNC7(device_t dev, int target, int mode)
{
	device_t parent = FUNC2(dev);
	struct ata_pci_controller *ctlr = FUNC3(parent);
	struct ata_channel *ch = FUNC3(dev);
        int devno = (ch->unit << 1) + target;
	int piomode;
	static const uint8_t timings[] =
	    { 0xa8, 0x65, 0x42, 0x22, 0x20, 0xa8, 0x22, 0x20 };
	static const uint8_t modes[] =
	    { 0xc2, 0xc1, 0xc0, 0xc4, 0xc5, 0xc6, 0xc7 };
	int reg = 0x53 - devno;

	mode = FUNC4(mode, ctlr->chip->max_dma);
	if (ctlr->chip->cfg1 & AMD_CABLE) {
		if (ata_dma_check_80pin && mode > ATA_UDMA2 &&
		    !(FUNC5(parent, 0x42, 1) & (1 << devno))) {
			FUNC1(dev, "controller");
			mode = ATA_UDMA2;
		}
	}
	/* Set UDMA timings. */
	if (mode >= ATA_UDMA0) {
	    FUNC6(parent, reg, modes[mode & ATA_MODE_MASK], 1);
	    piomode = ATA_PIO4;
	} else {
	    FUNC6(parent, reg, 0x8b, 1);
	    piomode = mode;
	}
	/* Set WDMA/PIO timings. */
	FUNC6(parent, reg - 0x08, timings[FUNC0(piomode)], 1);
	return (mode);
}