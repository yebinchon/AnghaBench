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
struct TYPE_2__ {int chiprev; } ;

/* Variables and functions */
 scalar_t__ ATA_ALI_1533 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void
FUNC9(device_t dev)
{
    struct ata_pci_controller *ctlr = FUNC4(FUNC3(dev));
    struct ata_channel *ch = FUNC4(dev);
    device_t *children;
    int nchildren, i;

    FUNC1(dev);

    /*
     * workaround for datacorruption bug found on at least SUN Blade-100
     * find the ISA function on the southbridge and disable then enable
     * the ATA channel tristate buffer
     */
    if (ctlr->chip->chiprev == 0xc3 || ctlr->chip->chiprev == 0xc2) {
	if (!FUNC2(FUNC0(dev), &children, &nchildren)) {
	    for (i = 0; i < nchildren; i++) {
		if (FUNC6(children[i]) == ATA_ALI_1533) {
		    FUNC8(children[i], 0x58, 
				     FUNC7(children[i], 0x58, 1) &
				     ~(0x04 << ch->unit), 1);
		    FUNC8(children[i], 0x58, 
				     FUNC7(children[i], 0x58, 1) |
				     (0x04 << ch->unit), 1);
		    break;
		}
	    }
	    FUNC5(children, M_TEMP);
	}
    }
}