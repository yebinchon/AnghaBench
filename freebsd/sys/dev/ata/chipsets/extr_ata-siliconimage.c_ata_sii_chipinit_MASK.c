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
struct ata_pci_controller {int channels; int /*<<< orphan*/  setmode; int /*<<< orphan*/  ch_detach; int /*<<< orphan*/  ch_attach; int /*<<< orphan*/  getrev; int /*<<< orphan*/  reset; TYPE_1__* chip; int /*<<< orphan*/  r_res2; int /*<<< orphan*/  r_rid2; int /*<<< orphan*/  r_type2; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int cfg1; int cfg2; int /*<<< orphan*/  max_dma; int /*<<< orphan*/  text; int /*<<< orphan*/  chipid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  ATA_SA150 ; 
 int /*<<< orphan*/  ATA_SII0680 ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int SII_4CH ; 
#define  SII_MEMIO 128 
 int SII_SETCLK ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  ata_cmd_ch_attach ; 
 int /*<<< orphan*/  ata_cmd_setmode ; 
 int /*<<< orphan*/  ata_generic_intr ; 
 int /*<<< orphan*/  ata_pci_ch_detach ; 
 int /*<<< orphan*/  ata_sata_getrev ; 
 int /*<<< orphan*/  ata_sata_setmode ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ata_sii_ch_attach ; 
 int /*<<< orphan*/  ata_sii_ch_detach ; 
 int /*<<< orphan*/  ata_sii_reset ; 
 int /*<<< orphan*/  ata_sii_setmode ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ata_pci_controller* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int,int) ; 

int
FUNC8(device_t dev)
{
    struct ata_pci_controller *ctlr = FUNC4(dev);

    if (FUNC2(dev, ata_generic_intr))
	return ENXIO;

    switch (ctlr->chip->cfg1) {
    case SII_MEMIO:
	ctlr->r_type2 = SYS_RES_MEMORY;
	ctlr->r_rid2 = FUNC1(5);
	if (!(ctlr->r_res2 = FUNC3(dev, ctlr->r_type2,
						    &ctlr->r_rid2, RF_ACTIVE))){
	    if (ctlr->chip->chipid != ATA_SII0680 ||
			    (FUNC6(dev, 0x8a, 1) & 1))
		return ENXIO;
	}

	if (ctlr->chip->cfg2 & SII_SETCLK) {
	    if ((FUNC6(dev, 0x8a, 1) & 0x30) != 0x10)
		FUNC7(dev, 0x8a,
				 (FUNC6(dev, 0x8a, 1) & 0xcf)|0x10,1);
	    if ((FUNC6(dev, 0x8a, 1) & 0x30) != 0x10)
		FUNC5(dev, "%s could not set ATA133 clock\n",
			      ctlr->chip->text);
	}

	/* if we have 4 channels enable the second set */
	if (ctlr->chip->cfg2 & SII_4CH) {
	    FUNC0(ctlr->r_res2, 0x0200, 0x00000002);
	    ctlr->channels = 4;
	}

	/* dont block interrupts from any channel */
	FUNC7(dev, 0x48,
			 (FUNC6(dev, 0x48, 4) & ~0x03c00000), 4);

	/* enable PCI interrupt as BIOS might not */
	FUNC7(dev, 0x8a, (FUNC6(dev, 0x8a, 1) & 0x3f), 1);

	if (ctlr->r_res2) {
	    ctlr->ch_attach = ata_sii_ch_attach;
	    ctlr->ch_detach = ata_sii_ch_detach;
	}

	if (ctlr->chip->max_dma >= ATA_SA150) {
	    ctlr->reset = ata_sii_reset;
	    ctlr->setmode = ata_sata_setmode;
	    ctlr->getrev = ata_sata_getrev;
	}
	else
	    ctlr->setmode = ata_sii_setmode;
	break;
    
    default:
	if ((FUNC6(dev, 0x51, 1) & 0x08) != 0x08) {
	    FUNC5(dev, "HW has secondary channel disabled\n");
	    ctlr->channels = 1;
	}    

	/* enable interrupt as BIOS might not */
	FUNC7(dev, 0x71, 0x01, 1);

	ctlr->ch_attach = ata_cmd_ch_attach;
	ctlr->ch_detach = ata_pci_ch_detach;
	ctlr->setmode = ata_cmd_setmode;
	break;
    }
    return 0;
}