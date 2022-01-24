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
typedef  int uint8_t ;
struct ata_pci_controller {scalar_t__ chipset_data; } ;
struct ata_channel {int unit; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_SATA ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct ata_pci_controller *ctlr = FUNC2(FUNC1(dev));
	struct ata_channel *ch = FUNC2(dev);
	uint8_t satacfg = (uint8_t)(uintptr_t)ctlr->chipset_data;

	/* Setup the usual register normal pci style. */
	if (FUNC0(dev))
		return ENXIO;

	/* One of channels is PATA, another is SATA. */
	if (ch->unit == ((satacfg & 0x10) >> 4))
		ch->flags |= ATA_SATA;
	return (0);
}