#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ata_pci_controller {TYPE_1__* chip; } ;
struct ata_channel {TYPE_2__* r_io; int /*<<< orphan*/  unit; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int /*<<< orphan*/  res; } ;
struct TYPE_3__ {int cfg2; } ;

/* Variables and functions */
 size_t ATA_CONTROL ; 
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int VIABAR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
    struct ata_pci_controller *ctlr = FUNC5(FUNC4(dev));
    struct ata_channel *ch = FUNC5(dev);

    /* newer SATA chips has resources in one BAR for each channel */
    if (ctlr->chip->cfg2 & VIABAR) {
	int rid;
		
	rid = FUNC0(ch->unit);
	FUNC3(FUNC4(dev),
	    SYS_RES_IOPORT, rid, ch->r_io[ATA_CONTROL].res);

	FUNC2(dev);
    }
    else {
	/* setup the usual register normal pci style */
	if (FUNC1(dev))
	    return ENXIO;
    }

    return 0;
}