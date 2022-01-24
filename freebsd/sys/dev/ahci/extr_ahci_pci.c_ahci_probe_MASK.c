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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {scalar_t__ id; scalar_t__ rev; int quirks; char* name; } ;

/* Variables and functions */
 int AHCI_Q_NOFORCE ; 
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 scalar_t__ PCIC_BRIDGE ; 
 scalar_t__ PCIC_STORAGE ; 
 scalar_t__ PCIP_STORAGE_SATA_AHCI_1_0 ; 
 scalar_t__ PCIS_STORAGE_RAID ; 
 scalar_t__ PCIS_STORAGE_SATA ; 
 TYPE_1__* ahci_ids ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int force_ahci ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	char buf[64];
	int i, valid = 0;
	uint32_t devid = FUNC2(dev);
	uint8_t revid = FUNC4(dev);

	/*
	 * Ensure it is not a PCI bridge (some vendors use
	 * the same PID and VID in PCI bridge and AHCI cards).
	 */
	if (FUNC1(dev) == PCIC_BRIDGE)
		return (ENXIO);

	/* Is this a possible AHCI candidate? */
	if (FUNC1(dev) == PCIC_STORAGE &&
	    FUNC5(dev) == PCIS_STORAGE_SATA &&
	    FUNC3(dev) == PCIP_STORAGE_SATA_AHCI_1_0)
		valid = 1;
	else if (FUNC1(dev) == PCIC_STORAGE &&
	    FUNC5(dev) == PCIS_STORAGE_RAID)
		valid = 2;
	/* Is this a known AHCI chip? */
	for (i = 0; ahci_ids[i].id != 0; i++) {
		if (ahci_ids[i].id == devid &&
		    ahci_ids[i].rev <= revid &&
		    (valid || (force_ahci == 1 &&
		     !(ahci_ids[i].quirks & AHCI_Q_NOFORCE)))) {
			/* Do not attach JMicrons with single PCI function. */
			if (FUNC6(dev) == 0x197b &&
			    (FUNC7(dev, 0xdf, 1) & 0x40) == 0)
				return (ENXIO);
			FUNC8(buf, sizeof(buf), "%s AHCI SATA controller",
			    ahci_ids[i].name);
			FUNC0(dev, buf);
			return (BUS_PROBE_DEFAULT);
		}
	}
	if (valid != 1)
		return (ENXIO);
	FUNC0(dev, "AHCI SATA controller");
	return (BUS_PROBE_DEFAULT);
}