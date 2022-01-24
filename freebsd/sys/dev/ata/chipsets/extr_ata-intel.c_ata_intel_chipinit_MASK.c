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
struct ata_pci_controller {int channels; void* setmode; int /*<<< orphan*/  getrev; TYPE_1__* chip; int /*<<< orphan*/ * r_res2; void* r_rid2; void* r_type2; int /*<<< orphan*/  reset; void* ch_detach; void* ch_attach; void* chipset_data; } ;
struct ata_intel_data {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ chipid; scalar_t__ max_dma; int cfg2; int cfg1; } ;

/* Variables and functions */
 scalar_t__ ATA_I31244 ; 
 scalar_t__ ATA_I82371FB ; 
 scalar_t__ ATA_I82801HBM_S1 ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ ATA_ISCH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ ATA_SA150 ; 
 int ENXIO ; 
 int INTEL_ICH5 ; 
 int INTEL_ICH7 ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_ATAPCI ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 void* FUNC2 (int) ; 
 scalar_t__ PCIS_STORAGE_IDE ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 void* SYS_RES_IOPORT ; 
 void* SYS_RES_MEMORY ; 
 int /*<<< orphan*/  ata_generic_intr ; 
 void* ata_intel_31244_ch_attach ; 
 void* ata_intel_31244_ch_detach ; 
 int /*<<< orphan*/  ata_intel_31244_reset ; 
 void* ata_intel_ch_attach ; 
 void* ata_intel_new_setmode ; 
 void* ata_intel_old_setmode ; 
 int /*<<< orphan*/  ata_intel_reset ; 
 int /*<<< orphan*/  ata_intel_sata_getrev ; 
 void* ata_intel_sch_setmode ; 
 void* ata_pci_ch_detach ; 
 int /*<<< orphan*/  ata_sata_getrev ; 
 void* ata_sata_setmode ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ,void*,void**,int /*<<< orphan*/ ) ; 
 struct ata_pci_controller* FUNC5 (int /*<<< orphan*/ ) ; 
 struct ata_intel_data* FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
    struct ata_pci_controller *ctlr = FUNC5(dev);
    struct ata_intel_data *data;

    if (FUNC3(dev, ata_generic_intr))
	return ENXIO;

    data = FUNC6(sizeof(struct ata_intel_data), M_ATAPCI, M_WAITOK | M_ZERO);
    FUNC7(&data->lock, "Intel SATA lock", NULL, MTX_DEF);
    ctlr->chipset_data = (void *)data;

    /* good old PIIX needs special treatment (not implemented) */
    if (ctlr->chip->chipid == ATA_I82371FB) {
	ctlr->setmode = ata_intel_old_setmode;
    }

    /* the intel 31244 needs special care if in DPA mode */
    else if (ctlr->chip->chipid == ATA_I31244) {
	if (FUNC8(dev) != PCIS_STORAGE_IDE) {
	    ctlr->r_type2 = SYS_RES_MEMORY;
	    ctlr->r_rid2 = FUNC2(0);
	    if (!(ctlr->r_res2 = FUNC4(dev, ctlr->r_type2,
							&ctlr->r_rid2,
							RF_ACTIVE)))
		return ENXIO;
	    ctlr->channels = 4;
	    ctlr->ch_attach = ata_intel_31244_ch_attach;
	    ctlr->ch_detach = ata_intel_31244_ch_detach;
	    ctlr->reset = ata_intel_31244_reset;
	}
	ctlr->setmode = ata_sata_setmode;
	ctlr->getrev = ata_sata_getrev;
    }
    /* SCH */
    else if (ctlr->chip->chipid == ATA_ISCH) {
	ctlr->channels = 1;
	ctlr->ch_attach = ata_intel_ch_attach;
	ctlr->ch_detach = ata_pci_ch_detach;
	ctlr->setmode = ata_intel_sch_setmode;
    }
    /* non SATA intel chips goes here */
    else if (ctlr->chip->max_dma < ATA_SA150) {
	ctlr->channels = ctlr->chip->cfg2;
	ctlr->ch_attach = ata_intel_ch_attach;
	ctlr->ch_detach = ata_pci_ch_detach;
	ctlr->setmode = ata_intel_new_setmode;
    }

    /* SATA parts can be either compat or AHCI */
    else {
	/* force all ports active "the legacy way" */
	FUNC11(dev, 0x92, FUNC10(dev, 0x92, 2) | 0x0f, 2);

	ctlr->ch_attach = ata_intel_ch_attach;
	ctlr->ch_detach = ata_pci_ch_detach;
	ctlr->reset = ata_intel_reset;

	/* BAR(5) may point to SATA interface registers */
	if ((ctlr->chip->cfg1 & INTEL_ICH7)) {
		ctlr->r_type2 = SYS_RES_MEMORY;
		ctlr->r_rid2 = FUNC2(5);
		ctlr->r_res2 = FUNC4(dev, ctlr->r_type2,
		    &ctlr->r_rid2, RF_ACTIVE);
		if (ctlr->r_res2 != NULL) {
			/* Set SCRAE bit to enable registers access. */
			FUNC11(dev, 0x94,
			    FUNC10(dev, 0x94, 4) | (1 << 9), 4);
			/* Set Ports Implemented register bits. */
			FUNC1(ctlr->r_res2, 0x0C,
			    FUNC0(ctlr->r_res2, 0x0C) | 0xf);
		}
	/* Skip BAR(5) on ICH8M Apples, system locks up on access. */
	} else if (ctlr->chip->chipid != ATA_I82801HBM_S1 ||
	    FUNC9(dev) != 0x106b) {
		ctlr->r_type2 = SYS_RES_IOPORT;
		ctlr->r_rid2 = FUNC2(5);
		ctlr->r_res2 = FUNC4(dev, ctlr->r_type2,
		    &ctlr->r_rid2, RF_ACTIVE);
	}
	if (ctlr->r_res2 != NULL ||
	    (ctlr->chip->cfg1 & INTEL_ICH5))
		ctlr->getrev = ata_intel_sata_getrev;
	ctlr->setmode = ata_sata_setmode;
    }
    return 0;
}