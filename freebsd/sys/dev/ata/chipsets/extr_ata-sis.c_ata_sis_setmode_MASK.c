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
typedef  int uint32_t ;
typedef  int uint16_t ;
typedef  int u_int32_t ;
typedef  int u_int16_t ;
struct ata_pci_controller {TYPE_1__* chip; } ;
struct ata_channel {int unit; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int cfg1; int /*<<< orphan*/  max_dma; } ;

/* Variables and functions */
 int ATA_UDMA2 ; 
#define  SIS_100NEW 133 
#define  SIS_100OLD 132 
#define  SIS_133NEW 131 
#define  SIS_133OLD 130 
#define  SIS_33 129 
#define  SIS_66 128 
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

	mode = FUNC4(mode, ctlr->chip->max_dma);

	if (ctlr->chip->cfg1 == SIS_133NEW) {
		if (ata_dma_check_80pin && mode > ATA_UDMA2 &&
		        FUNC5(parent, ch->unit ? 0x52 : 0x50,2) & 0x8000) {
		        FUNC1(dev, "controller");
		        mode = ATA_UDMA2;
		}
	} else {
		if (ata_dma_check_80pin && mode > ATA_UDMA2 &&
		    FUNC5(parent, 0x48, 1)&(ch->unit ? 0x20 : 0x10)) {
		    FUNC1(dev, "controller");
		    mode = ATA_UDMA2;
		}
        }

	switch (ctlr->chip->cfg1) {
	case SIS_133NEW: {
	    static const uint32_t timings[] = 
		{ 0x28269008, 0x0c266008, 0x04263008, 0x0c0a3008, 0x05093008,
		  0x22196008, 0x0c0a3008, 0x05093008, 0x050939fc, 0x050936ac,
		  0x0509347c, 0x0509325c, 0x0509323c, 0x0509322c, 0x0509321c};
	    u_int32_t reg;

	    reg = (FUNC5(parent, 0x57, 1)&0x40?0x70:0x40)+(devno<<2);
	    FUNC6(parent, reg, timings[FUNC0(mode)], 4);
	    break;
	    }
	case SIS_133OLD: {
	    static const uint16_t timings[] =
	     { 0x00cb, 0x0067, 0x0044, 0x0033, 0x0031, 0x0044, 0x0033, 0x0031,
	       0x8f31, 0x8a31, 0x8731, 0x8531, 0x8331, 0x8231, 0x8131 };
		  
	    u_int16_t reg = 0x40 + (devno << 1);

	    FUNC6(parent, reg, timings[FUNC0(mode)], 2);
	    break;
	    }
	case SIS_100NEW: {
	    static const uint16_t timings[] =
		{ 0x00cb, 0x0067, 0x0044, 0x0033, 0x0031, 0x0044, 0x0033,
		  0x0031, 0x8b31, 0x8731, 0x8531, 0x8431, 0x8231, 0x8131 };
	    u_int16_t reg = 0x40 + (devno << 1);

	    FUNC6(parent, reg, timings[FUNC0(mode)], 2);
	    break;
	    }
	case SIS_100OLD:
	case SIS_66:
	case SIS_33: {
	    static const uint16_t timings[] =
		{ 0x0c0b, 0x0607, 0x0404, 0x0303, 0x0301, 0x0404, 0x0303,
		  0x0301, 0xf301, 0xd301, 0xb301, 0xa301, 0x9301, 0x8301 };
	    u_int16_t reg = 0x40 + (devno << 1);

	    FUNC6(parent, reg, timings[FUNC0(mode)], 2);
	    break;
	    }
	}
	return (mode);
}