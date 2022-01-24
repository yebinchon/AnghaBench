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
struct ata_pci_controller {TYPE_1__* chip; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  max_dma; } ;

/* Variables and functions */
 int ATA_UDMA2 ; 
 scalar_t__ ata_dma_check_80pin ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ata_pci_controller* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC5(device_t dev, int target, int mode)
{
	device_t parent = FUNC1(dev);
	struct ata_pci_controller *ctlr = FUNC2(parent);

	mode = FUNC3(mode, ctlr->chip->max_dma);
	/* check for 80pin cable present */
	if (ata_dma_check_80pin && mode > ATA_UDMA2 &&
	    FUNC4(parent, 0x40, 1) & 0x08) {
		FUNC0(dev, "controller");
		mode = ATA_UDMA2;
	}
	/* Nothing to do to setup mode, the controller snoop SET_FEATURE cmd. */
	return (mode);
}