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
struct ata_channel {int unit; scalar_t__ devices; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int cfg2; } ;

/* Variables and functions */
 int VIABAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(device_t dev)
{
    struct ata_pci_controller *ctlr = FUNC3(FUNC2(dev));
    struct ata_channel *ch = FUNC3(dev);

    if ((ctlr->chip->cfg2 & VIABAR) && (ch->unit > 1))
        FUNC0(dev);
    else {
	if (FUNC1(dev, -1, 1))
	    FUNC0(dev);
	else
	    ch->devices = 0;
    }
}