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
struct ata_pci_controller {int /*<<< orphan*/  setmode; TYPE_1__* chip; int /*<<< orphan*/  reset; int /*<<< orphan*/  getrev; int /*<<< orphan*/  ch_detach; int /*<<< orphan*/  ch_attach; int /*<<< orphan*/  channels; int /*<<< orphan*/  r_rid2; int /*<<< orphan*/  r_type2; int /*<<< orphan*/  r_res2; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ cfg1; int /*<<< orphan*/  cfg2; } ;

/* Variables and functions */
 scalar_t__ ATA_ROSB4_ISA ; 
 int ENXIO ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 scalar_t__ SWKS_100 ; 
 scalar_t__ SWKS_33 ; 
 scalar_t__ SWKS_MIO ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  ata_generic_intr ; 
 int /*<<< orphan*/  ata_sata_getrev ; 
 int /*<<< orphan*/  ata_sata_setmode ; 
 int /*<<< orphan*/  ata_serverworks_ch_attach ; 
 int /*<<< orphan*/  ata_serverworks_ch_detach ; 
 int /*<<< orphan*/  ata_serverworks_sata_reset ; 
 int /*<<< orphan*/  ata_serverworks_setmode ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct ata_pci_controller* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
    struct ata_pci_controller *ctlr = FUNC5(dev);

    if (FUNC1(dev, ata_generic_intr))
	return ENXIO;

    if (ctlr->chip->cfg1 == SWKS_MIO) {
	ctlr->r_type2 = SYS_RES_MEMORY;
	ctlr->r_rid2 = FUNC0(5);
	if (!(ctlr->r_res2 = FUNC2(dev, ctlr->r_type2,
						    &ctlr->r_rid2, RF_ACTIVE)))
	    return ENXIO;

	ctlr->channels = ctlr->chip->cfg2;
	ctlr->ch_attach = ata_serverworks_ch_attach;
	ctlr->ch_detach = ata_serverworks_ch_detach;
	ctlr->setmode = ata_sata_setmode;
	ctlr->getrev = ata_sata_getrev;
	ctlr->reset = ata_serverworks_sata_reset;
	return 0;
    }
    else if (ctlr->chip->cfg1 == SWKS_33) {
	device_t *children;
	int nchildren, i;

	/* locate the ISA part in the southbridge and enable UDMA33 */
	if (!FUNC3(FUNC4(dev), &children,&nchildren)){
	    for (i = 0; i < nchildren; i++) {
		if (FUNC7(children[i]) == ATA_ROSB4_ISA) {
		    FUNC9(children[i], 0x64,
				     (FUNC8(children[i], 0x64, 4) &
				      ~0x00002000) | 0x00004000, 4);
		    break;
		}
	    }
	    FUNC6(children, M_TEMP);
	}
    }
    else {
	FUNC9(dev, 0x5a, (FUNC8(dev, 0x5a, 1) & ~0x40) |
	    ((ctlr->chip->cfg1 == SWKS_100) ? 0x03 : 0x02), 1);
    }
    ctlr->setmode = ata_serverworks_setmode;
    return 0;
}