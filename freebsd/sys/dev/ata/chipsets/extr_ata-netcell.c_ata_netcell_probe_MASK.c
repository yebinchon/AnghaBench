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
 scalar_t__ ATA_NETCELL_SR ; 
 int BUS_PROBE_LOW_PRIORITY ; 
 int ENXIO ; 
 int /*<<< orphan*/  ata_netcell_chipinit ; 
 struct ata_pci_controller* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
    struct ata_pci_controller *ctlr = FUNC0(dev);

    if (FUNC2(dev) == ATA_NETCELL_SR) {
	FUNC1(dev, "Netcell SyncRAID SR3000/5000 RAID Controller");
	ctlr->chipinit = ata_netcell_chipinit;
	return (BUS_PROBE_LOW_PRIORITY);
    }
    return ENXIO;
}