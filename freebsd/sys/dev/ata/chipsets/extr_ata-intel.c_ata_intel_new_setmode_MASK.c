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
typedef  int u_int8_t ;
typedef  int u_int32_t ;
typedef  int u_int16_t ;
struct ata_pci_controller {TYPE_1__* chip; } ;
struct ata_channel {int unit; int flags; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  max_dma; } ;

/* Variables and functions */
 int ATA_MODE_MASK ; 
 int ATA_PIO4 ; 
 int ATA_SATA ; 
 int ATA_UDMA0 ; 
 int ATA_UDMA2 ; 
 int ATA_UDMA3 ; 
 int ATA_UDMA5 ; 
 scalar_t__ ata_dma_check_80pin ; 
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int
FUNC8(device_t dev, int target, int mode)
{
	device_t parent = FUNC3(dev);
	struct ata_pci_controller *ctlr = FUNC4(parent);
	struct ata_channel *ch = FUNC4(dev);
	int devno = (ch->unit << 1) + target;
	int piomode;
	u_int32_t reg40 = FUNC6(parent, 0x40, 4);
	u_int8_t reg44 = FUNC6(parent, 0x44, 1);
	u_int8_t reg48 = FUNC6(parent, 0x48, 1);
	u_int16_t reg4a = FUNC6(parent, 0x4a, 2);
	u_int16_t reg54 = FUNC6(parent, 0x54, 2);
	u_int32_t mask40 = 0, new40 = 0;
	u_int8_t mask44 = 0, new44 = 0;
	static const uint8_t timings[] =
	    { 0x00, 0x00, 0x10, 0x21, 0x23, 0x00, 0x21, 0x23 };
	static const uint8_t utimings[] =
	    { 0x00, 0x01, 0x02, 0x01, 0x02, 0x01, 0x02 };

	/* In combined mode, skip PATA stuff for SATA channel. */
	if (ch->flags & ATA_SATA)
		return (FUNC2(dev, target, mode));

	mode = FUNC5(mode, ctlr->chip->max_dma);
	if (ata_dma_check_80pin && mode > ATA_UDMA2 &&
	    !(reg54 & (0x10 << devno))) {
		FUNC1(dev, "controller");
		mode = ATA_UDMA2;
	}
	/* Enable/disable UDMA and set timings. */
	if (mode >= ATA_UDMA0) {
	    FUNC7(parent, 0x48, reg48 | (0x0001 << devno), 2);
	    FUNC7(parent, 0x4a,
		(reg4a & ~(0x3 << (devno << 2))) |
		(utimings[mode & ATA_MODE_MASK] << (devno<<2)), 2);
	    piomode = ATA_PIO4;
	} else {
	    FUNC7(parent, 0x48, reg48 & ~(0x0001 << devno), 2);
	    FUNC7(parent, 0x4a, (reg4a & ~(0x3 << (devno << 2))),2);
	    piomode = mode;
	}
	reg54 |= 0x0400;
	/* Set UDMA reference clock (33/66/133MHz). */
	reg54 &= ~(0x1001 << devno);
	if (mode >= ATA_UDMA5)
	    reg54 |= (0x1000 << devno);
	else if (mode >= ATA_UDMA3)
	    reg54 |= (0x1 << devno);
	FUNC7(parent, 0x54, reg54, 2);
	/* Allow PIO/WDMA timing controls. */
	reg40 &= ~0x00ff00ff;
	reg40 |= 0x40774077;
	/* Set PIO/WDMA timings. */
	if (target == 0) {
	    mask40 = 0x3300;
	    new40 = timings[FUNC0(piomode)] << 8;
	} else {
	    mask44 = 0x0f;
	    new44 = ((timings[FUNC0(piomode)] & 0x30) >> 2) |
		    (timings[FUNC0(piomode)] & 0x03);
	}
	if (ch->unit) {
	    mask40 <<= 16;
	    new40 <<= 16;
	    mask44 <<= 4;
	    new44 <<= 4;
	}
	FUNC7(parent, 0x40, (reg40 & ~mask40) | new40, 4);
	FUNC7(parent, 0x44, (reg44 & ~mask44) | new44, 1);
	return (mode);
}