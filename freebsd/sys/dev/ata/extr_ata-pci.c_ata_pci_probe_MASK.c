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
 int BUS_PROBE_GENERIC ; 
 int ENXIO ; 
 scalar_t__ PCIC_STORAGE ; 
 scalar_t__ PCIS_STORAGE_IDE ; 
 int /*<<< orphan*/  ata_generic_chipinit ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 struct ata_pci_controller* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*) ; 

int
FUNC6(device_t dev)
{
    struct ata_pci_controller *ctlr = FUNC1(dev);
    char buffer[64];

    /* is this a storage class device ? */
    if (FUNC3(dev) != PCIC_STORAGE)
	return (ENXIO);

    /* is this an IDE/ATA type device ? */
    if (FUNC4(dev) != PCIS_STORAGE_IDE)
	return (ENXIO);
    
    FUNC5(buffer, "%s ATA controller", FUNC0(dev));
    FUNC2(dev, buffer);
    ctlr->chipinit = ata_generic_chipinit;

    /* we are a low priority handler */
    return (BUS_PROBE_GENERIC);
}