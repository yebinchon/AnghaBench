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
typedef  int u_int32_t ;
struct ata_pci_controller {TYPE_1__* chip; } ;
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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ata_pci_controller* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int
FUNC5(device_t dev, int target, int mode)
{
	device_t parent = FUNC0(dev);
	struct ata_pci_controller *ctlr = FUNC1(parent);
	u_int8_t dtim = 0x80 + (target << 2);
	u_int32_t tim = FUNC3(parent, dtim, 4);
	int piomode;

	mode = FUNC2(mode, ctlr->chip->max_dma);
	if (mode >= ATA_UDMA0) {
		tim |= (0x1 << 31);
		tim &= ~(0x7 << 16);
		tim |= ((mode & ATA_MODE_MASK) << 16);
		piomode = ATA_PIO4;
	} else if (mode >= ATA_WDMA0) {
		tim &= ~(0x1 << 31);
		tim &= ~(0x3 << 8);
		tim |= ((mode & ATA_MODE_MASK) << 8);
		piomode = (mode == ATA_WDMA0) ? ATA_PIO0 :
		    (mode == ATA_WDMA1) ? ATA_PIO3 : ATA_PIO4;
	} else
		piomode = mode;
	tim &= ~(0x7);
	tim |= (piomode & 0x7);
	FUNC4(parent, dtim, tim, 4);
	return (mode);
}