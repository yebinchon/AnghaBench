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
struct ata_pci_controller {int (* getrev ) (int /*<<< orphan*/ ,int) ;} ;
struct ata_channel {int flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ATA_SATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(device_t dev, int target)
{
	struct ata_pci_controller *ctlr = FUNC1(FUNC0(dev));
	struct ata_channel *ch = FUNC1(dev);

	if (ch->flags & ATA_SATA) {
		if (ctlr->getrev)
			return (ctlr->getrev(dev, target));
		else 
			return (0xff);
	} else
		return (0);
}