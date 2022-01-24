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
typedef  int uint16_t ;
struct pci_devinfo {int /*<<< orphan*/  cfg; } ;
typedef  int pci_addr_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int PCIM_CMD_MEMEN ; 
 int PCIM_CMD_PORTEN ; 
 int PCIR_COMMAND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int) ; 
 struct pci_devinfo* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,int) ; 

void
FUNC6(device_t dev, int reg, pci_addr_t *mapp, pci_addr_t *testvalp,
    int *bar64)
{
	struct pci_devinfo *dinfo;
	pci_addr_t map, testval;
	int ln2range;
	uint16_t cmd;

	/*
	 * The device ROM BAR is special.  It is always a 32-bit
	 * memory BAR.  Bit 0 is special and should not be set when
	 * sizing the BAR.
	 */
	dinfo = FUNC2(dev);
	if (FUNC0(&dinfo->cfg, reg)) {
		map = FUNC4(dev, reg, 4);
		FUNC5(dev, reg, 0xfffffffe, 4);
		testval = FUNC4(dev, reg, 4);
		FUNC5(dev, reg, map, 4);
		*mapp = map;
		*testvalp = testval;
		if (bar64 != NULL)
			*bar64 = 0;
		return;
	}

	map = FUNC4(dev, reg, 4);
	ln2range = FUNC3(map);
	if (ln2range == 64)
		map |= (pci_addr_t)FUNC4(dev, reg + 4, 4) << 32;

	/*
	 * Disable decoding via the command register before
	 * determining the BAR's length since we will be placing it in
	 * a weird state.
	 */
	cmd = FUNC4(dev, PCIR_COMMAND, 2);
	FUNC5(dev, PCIR_COMMAND,
	    cmd & ~(FUNC1(map) ? PCIM_CMD_MEMEN : PCIM_CMD_PORTEN), 2);

	/*
	 * Determine the BAR's length by writing all 1's.  The bottom
	 * log_2(size) bits of the BAR will stick as 0 when we read
	 * the value back.
	 *
	 * NB: according to the PCI Local Bus Specification, rev. 3.0:
	 * "Software writes 0FFFFFFFFh to both registers, reads them back,
	 * and combines the result into a 64-bit value." (section 6.2.5.1)
	 *
	 * Writes to both registers must be performed before attempting to
	 * read back the size value.
	 */
	testval = 0;
	FUNC5(dev, reg, 0xffffffff, 4);
	if (ln2range == 64) {
		FUNC5(dev, reg + 4, 0xffffffff, 4);
		testval |= (pci_addr_t)FUNC4(dev, reg + 4, 4) << 32;
	}
	testval |= FUNC4(dev, reg, 4);

	/*
	 * Restore the original value of the BAR.  We may have reprogrammed
	 * the BAR of the low-level console device and when booting verbose,
	 * we need the console device addressable.
	 */
	FUNC5(dev, reg, map, 4);
	if (ln2range == 64)
		FUNC5(dev, reg + 4, map >> 32, 4);
	FUNC5(dev, PCIR_COMMAND, cmd, 2);

	*mapp = map;
	*testvalp = testval;
	if (bar64 != NULL)
		*bar64 = (ln2range == 64);
}