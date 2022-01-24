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
struct ata_pci_controller {void* setmode; int /*<<< orphan*/  reset; void* ch_detach; int /*<<< orphan*/  ch_attach; TYPE_1__* chip; struct ali_sata_resources* chipset_data; int /*<<< orphan*/  getrev; int /*<<< orphan*/  channels; } ;
struct ali_sata_resources {int /*<<< orphan*/ ** bars; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int cfg2; int chiprev; int /*<<< orphan*/  cfg1; } ;

/* Variables and functions */
#define  ALI_NEW 130 
#define  ALI_OLD 129 
#define  ALI_SATA 128 
 int ENXIO ; 
 int /*<<< orphan*/  M_ATAPCI ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  ata_ali_ch_attach ; 
 int /*<<< orphan*/  ata_ali_reset ; 
 int /*<<< orphan*/  ata_ali_sata_ch_attach ; 
 void* ata_ali_setmode ; 
 int /*<<< orphan*/  ata_generic_intr ; 
 void* ata_pci_ch_detach ; 
 int /*<<< orphan*/  ata_sata_getrev ; 
 void* ata_sata_setmode ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct ata_pci_controller* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct ali_sata_resources*,int /*<<< orphan*/ ) ; 
 struct ali_sata_resources* FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
    struct ata_pci_controller *ctlr = FUNC4(dev);
    struct ali_sata_resources *res;
    int i, rid;

    if (FUNC1(dev, ata_generic_intr))
	return ENXIO;

    switch (ctlr->chip->cfg2) {
    case ALI_SATA:
	ctlr->channels = ctlr->chip->cfg1;
	ctlr->ch_attach = ata_ali_sata_ch_attach;
	ctlr->ch_detach = ata_pci_ch_detach;
	ctlr->setmode = ata_sata_setmode;
	ctlr->getrev = ata_sata_getrev;

	/* Allocate resources for later use by channel attach routines. */
	res = FUNC7(sizeof(struct ali_sata_resources), M_ATAPCI, M_WAITOK);
	for (i = 0; i < 4; i++) {
		rid = FUNC0(i);
		res->bars[i] = FUNC2(dev, SYS_RES_IOPORT, &rid,
		    RF_ACTIVE);
		if (res->bars[i] == NULL) {
			FUNC5(dev, "Failed to allocate BAR %d\n", i);
			for (i--; i >=0; i--)
				FUNC3(dev, SYS_RES_IOPORT,
				    FUNC0(i), res->bars[i]);
			FUNC6(res, M_ATAPCI);
			return ENXIO;
		}
	}
	ctlr->chipset_data = res;
	break;

    case ALI_NEW:
	/* use device interrupt as byte count end */
	FUNC9(dev, 0x4a, FUNC8(dev, 0x4a, 1) | 0x20, 1);

	/* enable cable detection and UDMA support on revisions < 0xc7 */
	if (ctlr->chip->chiprev < 0xc7)
	    FUNC9(dev, 0x4b, FUNC8(dev, 0x4b, 1) |
		0x09, 1);

	/* enable ATAPI UDMA mode (even if we are going to do PIO) */
	FUNC9(dev, 0x53, FUNC8(dev, 0x53, 1) |
	    (ctlr->chip->chiprev >= 0xc7 ? 0x03 : 0x01), 1);

	/* only chips with revision > 0xc4 can do 48bit DMA */
	if (ctlr->chip->chiprev <= 0xc4)
	    FUNC5(dev,
			  "using PIO transfers above 137GB as workaround for "
			  "48bit DMA access bug, expect reduced performance\n");
	ctlr->ch_attach = ata_ali_ch_attach;
	ctlr->ch_detach = ata_pci_ch_detach;
	ctlr->reset = ata_ali_reset;
	ctlr->setmode = ata_ali_setmode;
	break;

    case ALI_OLD:
	/* deactivate the ATAPI FIFO and enable ATAPI UDMA */
	FUNC9(dev, 0x53, FUNC8(dev, 0x53, 1) | 0x03, 1);
	ctlr->setmode = ata_ali_setmode;
	break;
    }
    return 0;
}