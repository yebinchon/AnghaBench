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
struct ata_channel {int unit; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ cfg2; } ;

/* Variables and functions */
 scalar_t__ PR_CMBO ; 
 scalar_t__ PR_CMBO2 ; 
 scalar_t__ PR_SATA ; 
 scalar_t__ PR_SATA2 ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev, int target)
{
        struct ata_pci_controller *ctlr = FUNC2(FUNC1(dev));
        struct ata_channel *ch = FUNC2(dev);

        if ( (ctlr->chip->cfg2 == PR_SATA) ||
    	    ((ctlr->chip->cfg2 == PR_CMBO) && (ch->unit < 2)) ||
	     (ctlr->chip->cfg2 == PR_SATA2) ||
	    ((ctlr->chip->cfg2 == PR_CMBO2) && (ch->unit < 2)))
		return (FUNC0(dev, target));
	else
		return (0);
}