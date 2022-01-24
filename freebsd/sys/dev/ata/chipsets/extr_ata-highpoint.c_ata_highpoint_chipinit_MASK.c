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
struct ata_pci_controller {int /*<<< orphan*/  setmode; int /*<<< orphan*/  ch_detach; int /*<<< orphan*/  ch_attach; TYPE_1__* chip; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ cfg2; scalar_t__ cfg1; } ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ HPT_372 ; 
 scalar_t__ HPT_OLD ; 
 int /*<<< orphan*/  ata_generic_intr ; 
 int /*<<< orphan*/  ata_highpoint_ch_attach ; 
 int /*<<< orphan*/  ata_highpoint_setmode ; 
 int /*<<< orphan*/  ata_pci_ch_detach ; 
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

    if (ctlr->chip->cfg2 == HPT_OLD) {
	/* disable interrupt prediction */
	FUNC3(dev, 0x51, (FUNC2(dev, 0x51, 1) & ~0x80), 1);
    }
    else {
	/* disable interrupt prediction */
	FUNC3(dev, 0x51, (FUNC2(dev, 0x51, 1) & ~0x03), 1);
	FUNC3(dev, 0x55, (FUNC2(dev, 0x55, 1) & ~0x03), 1);

	/* enable interrupts */
	FUNC3(dev, 0x5a, (FUNC2(dev, 0x5a, 1) & ~0x10), 1);

	/* set clocks etc */
	if (ctlr->chip->cfg1 < HPT_372)
	    FUNC3(dev, 0x5b, 0x22, 1);
	else
	    FUNC3(dev, 0x5b,
			     (FUNC2(dev, 0x5b, 1) & 0x01) | 0x20, 1);
    }
    ctlr->ch_attach = ata_highpoint_ch_attach;
    ctlr->ch_detach = ata_pci_ch_detach;
    ctlr->setmode = ata_highpoint_setmode;
    return 0;
}