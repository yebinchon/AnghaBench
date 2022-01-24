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
struct ata_pci_controller {int channels; int /*<<< orphan*/  setmode; int /*<<< orphan*/  reset; int /*<<< orphan*/  ch_detach; int /*<<< orphan*/  ch_attach; TYPE_1__* chip; } ;
typedef  int /*<<< orphan*/ * device_t ;
struct TYPE_2__ {scalar_t__ cfg1; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  ata_generic_intr ; 
 int /*<<< orphan*/  ata_generic_reset ; 
 int /*<<< orphan*/  ata_marvell_ch_attach ; 
 int /*<<< orphan*/  ata_marvell_setmode ; 
 int /*<<< orphan*/  ata_pci_ch_detach ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct ata_pci_controller* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct ata_pci_controller *ctlr = FUNC3(dev);
	device_t child;

	if (FUNC0(dev, ata_generic_intr))
		return ENXIO;
	/* Create AHCI subdevice if AHCI part present. */
	if (ctlr->chip->cfg1) {
	    	child = FUNC2(dev, NULL, -1);
		if (child != NULL) {
		    FUNC4(child, (void *)(intptr_t)-1);
		    FUNC1(dev);
		}
	}
        ctlr->ch_attach = ata_marvell_ch_attach;
	ctlr->ch_detach = ata_pci_ch_detach;
	ctlr->reset = ata_generic_reset;
        ctlr->setmode = ata_marvell_setmode;
        ctlr->channels = 1;
        return (0);
}