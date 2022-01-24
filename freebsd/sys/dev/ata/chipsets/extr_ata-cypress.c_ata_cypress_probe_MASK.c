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
struct ata_pci_controller {int /*<<< orphan*/  chipinit; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ ATA_CYPRESS_82C693 ; 
 int BUS_PROBE_LOW_PRIORITY ; 
 int ENXIO ; 
 scalar_t__ PCIS_STORAGE_IDE ; 
 int /*<<< orphan*/  ata_cypress_chipinit ; 
 struct ata_pci_controller* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
    struct ata_pci_controller *ctlr = FUNC0(dev);

    /*
     * the Cypress chip is a mess, it contains two ATA functions, but
     * both channels are visible on the first one.
     * simply ignore the second function for now, as the right
     * solution (ignoring the second channel on the first function)
     * doesn't work with the crappy ATA interrupt setup on the alpha.
     */
    if (FUNC2(dev) == ATA_CYPRESS_82C693 &&
	FUNC3(dev) == 1 &&
	FUNC4(dev) == PCIS_STORAGE_IDE) {
	FUNC1(dev, "Cypress 82C693 ATA controller");
	ctlr->chipinit = ata_cypress_chipinit;
	return (BUS_PROBE_LOW_PRIORITY);
    }
    return ENXIO;
}