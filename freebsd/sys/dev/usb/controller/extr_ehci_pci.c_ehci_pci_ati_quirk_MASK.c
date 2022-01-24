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
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_EHCI_VENDORID_ATI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int,int) ; 

__attribute__((used)) static void
FUNC5(device_t self, uint8_t is_sb700)
{
	device_t smbdev;
	uint32_t val;

	if (is_sb700) {
		/* Lookup SMBUS PCI device */
		smbdev = FUNC1(PCI_EHCI_VENDORID_ATI, 0x4385);
		if (smbdev == NULL)
			return;
		val = FUNC2(smbdev);
		if (val != 0x3a && val != 0x3b)
			return;
	}

	/*
	 * Note: this bit is described as reserved in SB700
	 * Register Reference Guide.
	 */
	val = FUNC3(self, 0x53, 1);
	if (!(val & 0x8)) {
		val |= 0x8;
		FUNC4(self, 0x53, val, 1);
		FUNC0(self, "AMD SB600/700 quirk applied\n");
	}
}