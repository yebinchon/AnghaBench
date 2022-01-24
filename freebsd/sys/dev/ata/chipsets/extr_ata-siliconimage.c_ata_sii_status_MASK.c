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
struct ata_pci_controller {int /*<<< orphan*/  r_res2; TYPE_1__* chip; } ;
struct ata_channel {int unit; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ max_dma; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ ATA_SA150 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
    struct ata_pci_controller *ctlr = FUNC4(FUNC3(dev));
    struct ata_channel *ch = FUNC4(dev);
    int offset0 = ((ch->unit & 1) << 3) + ((ch->unit & 2) << 8);
    int offset1 = ((ch->unit & 1) << 6) + ((ch->unit & 2) << 8);

    /* do we have any PHY events ? */
    if (ctlr->chip->max_dma >= ATA_SA150 &&
	(FUNC0(ctlr->r_res2, 0x10 + offset0) & 0x00000010))
	FUNC2(dev, -1);

    if (FUNC0(ctlr->r_res2, 0xa0 + offset1) & 0x00000800)
	return FUNC1(dev);
    else
	return 0;
}