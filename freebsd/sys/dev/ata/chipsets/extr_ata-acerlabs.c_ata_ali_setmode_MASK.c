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
typedef  int uint32_t ;
struct ata_pci_controller {TYPE_1__* chip; } ;
struct ata_channel {int unit; int devices; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int cfg2; int chiprev; int /*<<< orphan*/  max_dma; } ;

/* Variables and functions */
 int ALI_NEW ; 
 int ALI_OLD ; 
 int /*<<< orphan*/  ATA_ATAPI_DMA_RO ; 
 int ATA_ATAPI_MASTER ; 
 int ATA_ATAPI_SLAVE ; 
 int ATA_MODE_MASK ; 
 int ATA_PIO4 ; 
 int /*<<< orphan*/  ATA_PIO_MAX ; 
 int ATA_UDMA0 ; 
 int ATA_UDMA2 ; 
 scalar_t__ ata_dma_check_80pin ; 
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int const,int) ; 

__attribute__((used)) static int
FUNC8(device_t dev, int target, int mode)
{
	device_t parent = FUNC2(dev);
	struct ata_pci_controller *ctlr = FUNC3(parent);
	struct ata_channel *ch = FUNC3(dev);
	int devno = (ch->unit << 1) + target;
	int piomode;
	static const uint32_t piotimings[] =
		{ 0x006d0003, 0x00580002, 0x00440001, 0x00330001,
		  0x00310001, 0x006d0003, 0x00330001, 0x00310001 };
	static const uint8_t udma[] = {0x0c, 0x0b, 0x0a, 0x09, 0x08, 0x0f,
	    0x0d};
	uint32_t word54;

        mode = FUNC5(mode, ctlr->chip->max_dma);

	if (ctlr->chip->cfg2 & ALI_NEW && ctlr->chip->chiprev < 0xc7) {
		if (ata_dma_check_80pin && mode > ATA_UDMA2 &&
		    FUNC6(parent, 0x4a, 1) & (1 << ch->unit)) {
			FUNC1(dev, "controller");
			mode = ATA_UDMA2;
		}
	}
	if (ctlr->chip->cfg2 & ALI_OLD) {
		/* doesn't support ATAPI DMA on write */
		ch->flags |= ATA_ATAPI_DMA_RO;
		if (ch->devices & ATA_ATAPI_MASTER &&
		    ch->devices & ATA_ATAPI_SLAVE) {
		        /* doesn't support ATAPI DMA on two ATAPI devices */
		        FUNC4(dev, "two atapi devices on this channel,"
			    " no DMA\n");
		        mode = FUNC5(mode, ATA_PIO_MAX);
		}
	}
	/* Set UDMA mode */
	word54 = FUNC6(parent, 0x54, 4);
	if (mode >= ATA_UDMA0) {
	    word54 &= ~(0x000f000f << (devno << 2));
	    word54 |= (((udma[mode&ATA_MODE_MASK]<<16)|0x05)<<(devno<<2));
	    piomode = ATA_PIO4;
	}
	else {
	    word54 &= ~(0x0008000f << (devno << 2));
	    piomode = mode;
	}
	FUNC7(parent, 0x54, word54, 4);
	/* Set PIO/WDMA mode */
	FUNC7(parent, 0x58 + (ch->unit << 2),
	    piotimings[FUNC0(piomode)], 4);
	return (mode);
}