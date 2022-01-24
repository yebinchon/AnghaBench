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
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int const,int) ; 

__attribute__((used)) static int
FUNC6(device_t dev, int target, int mode)
{
	device_t parent = FUNC1(dev);
	struct ata_pci_controller *ctlr = FUNC2(parent);
	struct ata_channel *ch = FUNC2(dev);
	int devno = (ch->unit << 1) + target;
	int treg = 0x54 + ((devno < 3) ? (devno << 1) : 7);
	int ureg = ch->unit ? 0x7b : 0x73;
	int piomode;
	static const uint8_t piotimings[] =
	    { 0xa9, 0x57, 0x44, 0x32, 0x3f, 0x87, 0x32, 0x3f };
	static const uint8_t udmatimings[][2] =
	    { { 0x31,  0xc2 }, { 0x21,  0x82 }, { 0x11,  0x42 },
	      { 0x25,  0x8a }, { 0x15,  0x4a }, { 0x05,  0x0a } };

	mode = FUNC3(mode, ctlr->chip->max_dma);
	if (mode >= ATA_UDMA0) {        
		u_int8_t umode = FUNC4(parent, ureg, 1);

	        umode &= ~(target == 0 ? 0x35 : 0xca);
		umode |= udmatimings[mode & ATA_MODE_MASK][target];
		FUNC5(parent, ureg, umode, 1);
		piomode = ATA_PIO4;
	} else { 
		FUNC5(parent, ureg, 
			     FUNC4(parent, ureg, 1) &
			     ~(target == 0 ? 0x35 : 0xca), 1);
		piomode = mode;
	}
	FUNC5(parent, treg, piotimings[FUNC0(piomode)], 1);
	return (mode);
}