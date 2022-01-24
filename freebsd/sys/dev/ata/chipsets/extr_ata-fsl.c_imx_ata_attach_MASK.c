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
struct ata_pci_controller {int channels; int ichannels; scalar_t__ legacy; int /*<<< orphan*/  setmode; int /*<<< orphan*/  ch_attach; scalar_t__ r_rid1; int /*<<< orphan*/  r_type1; int /*<<< orphan*/  r_res1; int /*<<< orphan*/ * dev; int /*<<< orphan*/  ch_detach; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  ata_devclass ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ata_pci_ch_attach ; 
 int /*<<< orphan*/  ata_pci_ch_detach ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 struct ata_pci_controller* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  imx_ata_ch_attach ; 
 int /*<<< orphan*/  imx_ata_intr ; 
 int /*<<< orphan*/  imx_ata_setmode ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct ata_pci_controller *ctrl;
	device_t child;
	int unit;

	ctrl = FUNC6(dev);
	/* do chipset specific setups only needed once */
	ctrl->legacy = FUNC0(dev);
	ctrl->channels = 1;
	ctrl->ichannels = -1;
	ctrl->ch_attach = ata_pci_ch_attach;
	ctrl->ch_detach = ata_pci_ch_detach;
	ctrl->dev = dev;

	ctrl->r_type1 = SYS_RES_MEMORY;
	ctrl->r_rid1 = 0;
	ctrl->r_res1 = FUNC2(dev, ctrl->r_type1,
	    &ctrl->r_rid1, RF_ACTIVE);

	if (FUNC1(dev, imx_ata_intr)) {
		FUNC7(dev, "failed to setup interrupt\n");
    		return ENXIO;
	}

	ctrl->channels = 1;

	ctrl->ch_attach = imx_ata_ch_attach;
	ctrl->setmode = imx_ata_setmode;

	/* attach all channels on this controller */
	unit = 0;
	child = FUNC5(dev, "ata", ((unit == 0) && ctrl->legacy) ?
		    unit : FUNC4(ata_devclass, 2));
	if (child == NULL)
		FUNC7(dev, "failed to add ata child device\n");
	else
		FUNC8(child, (void *)(intptr_t)unit);

	FUNC3(dev);
	return 0;
}