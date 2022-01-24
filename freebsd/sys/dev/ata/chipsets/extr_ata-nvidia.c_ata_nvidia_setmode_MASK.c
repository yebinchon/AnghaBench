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
struct TYPE_2__ {int /*<<< orphan*/  max_dma; } ;

/* Variables and functions */
 int ATA_MODE_MASK ; 
 int ATA_PIO4 ; 
 int ATA_UDMA0 ; 
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int const,int) ; 

__attribute__((used)) static int
FUNC5(device_t dev, int target, int mode)
{
	device_t parent = FUNC1(dev);
	struct ata_pci_controller *ctlr = FUNC2(parent);
	struct ata_channel *ch = FUNC2(dev);
	int devno = (ch->unit << 1) + target;
	int piomode;
	static const uint8_t timings[] =
	    { 0xa8, 0x65, 0x42, 0x22, 0x20, 0xa8, 0x22, 0x20 };
	static const uint8_t modes[] =
	    { 0xc2, 0xc1, 0xc0, 0xc4, 0xc5, 0xc6, 0xc7 };
	int reg = 0x63 - devno;

	mode = FUNC3(mode, ctlr->chip->max_dma);

	if (mode >= ATA_UDMA0) {
	    FUNC4(parent, reg, modes[mode & ATA_MODE_MASK], 1);
	    piomode = ATA_PIO4;
	} else {
	    FUNC4(parent, reg, 0x8b, 1);
	    piomode = mode;
	}
	FUNC4(parent, reg - 0x08, timings[FUNC0(piomode)], 1);
	return (mode);
}