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
 int ATA_PIO0 ; 
 int ATA_PIO3 ; 
 int ATA_PIO4 ; 
 int ATA_UDMA0 ; 
 int ATA_WDMA0 ; 
 int ATA_WDMA1 ; 
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int
FUNC6(device_t dev, int target, int mode)
{
	device_t parent = FUNC1(dev);
	struct ata_pci_controller *ctlr = FUNC2(parent);
	struct ata_channel *ch = FUNC2(dev);
	int devno = (ch->unit << 1) + target;
	int offset = (devno ^ 0x01) << 3;
	int piomode;
	static const uint8_t piotimings[] = { 0x5d, 0x47, 0x34, 0x22, 0x20 };
	static const uint8_t dmatimings[] = { 0x77, 0x21, 0x20 };

	mode = FUNC3(mode, ctlr->chip->max_dma);
	if (mode >= ATA_UDMA0) {
	    /* Set UDMA mode, enable UDMA, set WDMA2/PIO4 */
	    FUNC5(parent, 0x56, 
			     (FUNC4(parent, 0x56, 2) &
			      ~(0xf << (devno << 2))) |
			     ((mode & ATA_MODE_MASK) << (devno << 2)), 2);
	    FUNC5(parent, 0x54,
			     FUNC4(parent, 0x54, 1) |
			     (0x01 << devno), 1);
	    FUNC5(parent, 0x44, 
			     (FUNC4(parent, 0x44, 4) &
			      ~(0xff << offset)) |
			     (dmatimings[2] << offset), 4);
	    piomode = ATA_PIO4;
	} else if (mode >= ATA_WDMA0) {
	    /* Disable UDMA, set WDMA mode and timings, calculate PIO. */
	    FUNC5(parent, 0x54,
			     FUNC4(parent, 0x54, 1) &
			      ~(0x01 << devno), 1);
	    FUNC5(parent, 0x44, 
			     (FUNC4(parent, 0x44, 4) &
			      ~(0xff << offset)) |
			     (dmatimings[mode & ATA_MODE_MASK] << offset), 4);
	    piomode = (mode == ATA_WDMA0) ? ATA_PIO0 :
		(mode == ATA_WDMA1) ? ATA_PIO3 : ATA_PIO4;
	} else {
	    /* Disable UDMA, set requested PIO. */
	    FUNC5(parent, 0x54,
			     FUNC4(parent, 0x54, 1) &
			     ~(0x01 << devno), 1);
	    piomode = mode;
	}
	/* Set PIO mode and timings, calculated above. */
	FUNC5(parent, 0x4a,
			 (FUNC4(parent, 0x4a, 2) &
			  ~(0xf << (devno << 2))) |
			 ((piomode - ATA_PIO0) << (devno<<2)),2);
	FUNC5(parent, 0x40, 
			 (FUNC4(parent, 0x40, 4) &
			  ~(0xff << offset)) |
			 (piotimings[FUNC0(piomode)] << offset), 4);
	return (mode);
}