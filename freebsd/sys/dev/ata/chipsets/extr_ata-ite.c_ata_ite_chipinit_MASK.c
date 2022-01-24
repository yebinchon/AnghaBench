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
struct ata_pci_controller {int channels; int /*<<< orphan*/  ch_attach; int /*<<< orphan*/ * chipset_data; int /*<<< orphan*/  setmode; TYPE_1__* chip; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ chipid; } ;

/* Variables and functions */
 scalar_t__ ATA_IT8213F ; 
 int ENXIO ; 
 int /*<<< orphan*/  ata_generic_intr ; 
 int /*<<< orphan*/  ata_ite_8213_setmode ; 
 int /*<<< orphan*/  ata_ite_821x_setmode ; 
 int /*<<< orphan*/  ata_ite_ch_attach ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ata_pci_controller* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
    struct ata_pci_controller *ctlr = FUNC1(dev);

    if (FUNC0(dev, ata_generic_intr))
	return ENXIO;

    if (ctlr->chip->chipid == ATA_IT8213F) {
	/* the ITE 8213F only has one channel */
	ctlr->channels = 1;

	ctlr->setmode = ata_ite_8213_setmode;
    }
    else {
	/* set PCI mode and 66Mhz reference clock */
	FUNC3(dev, 0x50, FUNC2(dev, 0x50, 1) & ~0x83, 1);

	/* set default active & recover timings */
	FUNC3(dev, 0x54, 0x31, 1);
	FUNC3(dev, 0x56, 0x31, 1);

	ctlr->setmode = ata_ite_821x_setmode;
	/* No timing restrictions initially. */
	ctlr->chipset_data = NULL;
    }
    ctlr->ch_attach = ata_ite_ch_attach;
    return (0);
}