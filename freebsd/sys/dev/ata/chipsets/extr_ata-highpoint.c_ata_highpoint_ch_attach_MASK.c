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
struct ata_channel {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ cfg1; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_ALWAYS_DMASTAT ; 
 int /*<<< orphan*/  ATA_CHECKS_CABLE ; 
 int /*<<< orphan*/  ATA_NO_ATAPI_DMA ; 
 int ENXIO ; 
 scalar_t__ HPT_366 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct ata_pci_controller *ctlr = FUNC2(FUNC1(dev));
	struct ata_channel *ch = FUNC2(dev);

	/* setup the usual register normal pci style */
	if (FUNC0(dev))
		return (ENXIO);
	ch->flags |= ATA_ALWAYS_DMASTAT;
	ch->flags |= ATA_CHECKS_CABLE;
	if (ctlr->chip->cfg1 == HPT_366)
		ch->flags |= ATA_NO_ATAPI_DMA;
	return (0);
}