#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u_int32_t ;
struct ata_pci_controller {int channels; int ichannels; scalar_t__ legacy; scalar_t__ (* chipinit ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  r_rid1; int /*<<< orphan*/  r_type1; int /*<<< orphan*/  r_res1; int /*<<< orphan*/ * dev; int /*<<< orphan*/  ch_detach; int /*<<< orphan*/  ch_attach; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_BMADDR_RID ; 
 int ENXIO ; 
 int IOMASK ; 
 int PCIM_CMD_BUSMASTEREN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PCIR_COMMAND ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  ata_devclass ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ata_pci_ch_attach ; 
 int /*<<< orphan*/  ata_pci_ch_detach ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 struct ata_pci_controller* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

int
FUNC12(device_t dev)
{
    struct ata_pci_controller *ctlr = FUNC6(dev);
    device_t child;
    u_int32_t cmd;
    int unit;

    /* do chipset specific setups only needed once */
    ctlr->legacy = FUNC1(dev);
    if (ctlr->legacy || FUNC10(dev, FUNC0(2), 4) & IOMASK)
	ctlr->channels = 2;
    else
	ctlr->channels = 1;
    ctlr->ichannels = -1;
    ctlr->ch_attach = ata_pci_ch_attach;
    ctlr->ch_detach = ata_pci_ch_detach;
    ctlr->dev = dev;

    /* if needed try to enable busmastering */
    FUNC9(dev);
    cmd = FUNC10(dev, PCIR_COMMAND, 2);

    /* if busmastering mode "stuck" use it */
    if ((cmd & PCIM_CMD_BUSMASTEREN) == PCIM_CMD_BUSMASTEREN) {
	ctlr->r_type1 = SYS_RES_IOPORT;
	ctlr->r_rid1 = ATA_BMADDR_RID;
	ctlr->r_res1 = FUNC2(dev, ctlr->r_type1, &ctlr->r_rid1,
					      RF_ACTIVE);
    }

    if (ctlr->chipinit(dev))
	return ENXIO;

    /* attach all channels on this controller */
    for (unit = 0; unit < ctlr->channels; unit++) {
	if ((ctlr->ichannels & (1 << unit)) == 0)
	    continue;
	child = FUNC5(dev, "ata",
	    ((unit == 0 || unit == 1) && ctlr->legacy) ?
	    unit : FUNC4(ata_devclass, 2));
	if (child == NULL)
	    FUNC7(dev, "failed to add ata child device\n");
	else
	    FUNC8(child, (void *)(intptr_t)unit);
    }
    FUNC3(dev);
    return 0;
}