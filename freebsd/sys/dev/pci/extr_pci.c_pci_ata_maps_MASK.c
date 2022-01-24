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
typedef  int uint32_t ;
struct resource_list {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int PCIP_STORAGE_IDE_MODEPRIM ; 
 int PCIP_STORAGE_IDE_MODESEC ; 
 int FUNC0 (int) ; 
 int PCIR_PROGIF ; 
 int SYS_RES_IOPORT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource_list*,int,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct resource_list*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct resource_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(device_t bus, device_t dev, struct resource_list *rl, int force,
    uint32_t prefetchmask)
{
	int rid, type, progif;
#if 0
	/* if this device supports PCI native addressing use it */
	progif = pci_read_config(dev, PCIR_PROGIF, 1);
	if ((progif & 0x8a) == 0x8a) {
		if (pci_mapbase(pci_read_config(dev, PCIR_BAR(0), 4)) &&
		    pci_mapbase(pci_read_config(dev, PCIR_BAR(2), 4))) {
			printf("Trying ATA native PCI addressing mode\n");
			pci_write_config(dev, PCIR_PROGIF, progif | 0x05, 1);
		}
	}
#endif
	progif = FUNC3(dev, PCIR_PROGIF, 1);
	type = SYS_RES_IOPORT;
	if (progif & PCIP_STORAGE_IDE_MODEPRIM) {
		FUNC1(bus, dev, FUNC0(0), rl, force,
		    prefetchmask & (1 << 0));
		FUNC1(bus, dev, FUNC0(1), rl, force,
		    prefetchmask & (1 << 1));
	} else {
		rid = FUNC0(0);
		FUNC6(rl, type, rid, 0x1f0, 0x1f7, 8);
		(void)FUNC7(rl, bus, dev, type, &rid, 0x1f0,
		    0x1f7, 8, 0);
		rid = FUNC0(1);
		FUNC6(rl, type, rid, 0x3f6, 0x3f6, 1);
		(void)FUNC7(rl, bus, dev, type, &rid, 0x3f6,
		    0x3f6, 1, 0);
	}
	if (progif & PCIP_STORAGE_IDE_MODESEC) {
		FUNC1(bus, dev, FUNC0(2), rl, force,
		    prefetchmask & (1 << 2));
		FUNC1(bus, dev, FUNC0(3), rl, force,
		    prefetchmask & (1 << 3));
	} else {
		rid = FUNC0(2);
		FUNC6(rl, type, rid, 0x170, 0x177, 8);
		(void)FUNC7(rl, bus, dev, type, &rid, 0x170,
		    0x177, 8, 0);
		rid = FUNC0(3);
		FUNC6(rl, type, rid, 0x376, 0x376, 1);
		(void)FUNC7(rl, bus, dev, type, &rid, 0x376,
		    0x376, 1, 0);
	}
	FUNC1(bus, dev, FUNC0(4), rl, force,
	    prefetchmask & (1 << 4));
	FUNC1(bus, dev, FUNC0(5), rl, force,
	    prefetchmask & (1 << 5));
}