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
struct ata_pci_controller {TYPE_1__* chip; int /*<<< orphan*/  chipset_data; } ;
struct ata_channel {int unit; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  max_dma; } ;

/* Variables and functions */
 int ATA_MODE_MASK ; 
 int ATA_PIO4 ; 
 int ATA_UDMA0 ; 
 int ATA_UDMA2 ; 
 scalar_t__ ata_dma_check_80pin ; 
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int) ; 
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
	uint8_t *timings = (uint8_t*)(&ctlr->chipset_data);
	static const uint8_t udmatiming[] =
		{ 0x44, 0x42, 0x31, 0x21, 0x11, 0xa2, 0x91 };
	static const uint8_t chtiming[] =
		{ 0xaa, 0xa3, 0xa1, 0x33, 0x31, 0x88, 0x32, 0x31 };

	mode = FUNC5(mode, ctlr->chip->max_dma);
	/* check the CBLID bits for 80 conductor cable detection */
	if (ata_dma_check_80pin && mode > ATA_UDMA2 &&
	    (FUNC6(parent, 0x40, 2) &
			     (ch->unit ? (1<<3) : (1<<2)))) {
		FUNC1(dev, "controller");
		mode = ATA_UDMA2;
	}
	if (mode >= ATA_UDMA0) {
		/* enable UDMA mode */
		FUNC7(parent, 0x50,
			     FUNC6(parent, 0x50, 1) &
			     ~(1 << (devno + 3)), 1);
		/* set UDMA timing */
		FUNC7(parent,
			     0x56 + (ch->unit << 2) + target,
			     udmatiming[mode & ATA_MODE_MASK], 1);
		piomode = ATA_PIO4;
	} else {
		/* disable UDMA mode */
		FUNC7(parent, 0x50,
			     FUNC6(parent, 0x50, 1) |
			     (1 << (devno + 3)), 1);
		piomode = mode;
	}
	timings[devno] = chtiming[FUNC0(piomode)];
	/* set active and recover timing (shared between master & slave) */
	FUNC7(parent, 0x54 + (ch->unit << 2),
	    FUNC4(timings[ch->unit << 1], timings[(ch->unit << 1) + 1]), 1);
	return (mode);
}