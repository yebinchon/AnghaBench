#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_3__ {unsigned int vpd_cap_addr; } ;
struct TYPE_4__ {TYPE_1__ pci; } ;
struct adapter {int vpd_busy; int /*<<< orphan*/  vpd_flag; TYPE_2__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*,char*,...) ; 
 int EEPROMVSIZE ; 
 int EINVAL ; 
 scalar_t__ PCI_VPD_ADDR ; 
 int /*<<< orphan*/  PCI_VPD_ADDR_F ; 
 scalar_t__ PCI_VPD_DATA ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct adapter*) ; 

int FUNC5(struct adapter *adapter, u32 addr, u32 *data)
{
	unsigned int base = adapter->params.pci.vpd_cap_addr;
	int ret;

	/*
	 * VPD Accesses must alway be 4-byte aligned!
	 */
	if (addr >= EEPROMVSIZE || (addr & 3))
		return -EINVAL;

	/*
	 * Wait for any previous operation which may still be in flight to
	 * complete.
	 */
	ret = FUNC4(adapter);
	if (ret) {
		FUNC0(adapter, "VPD still busy from previous operation\n");
		return ret;
	}

	/*
	 * Issue our new VPD Read request, mark the VPD as being busy and wait
	 * for our request to complete.  If it doesn't complete, note the
	 * error and return it to our caller.  Note that we do not reset the
	 * VPD Busy status!
	 */
	FUNC3(adapter, base + PCI_VPD_ADDR, (u16)addr);
	adapter->vpd_busy = 1;
	adapter->vpd_flag = PCI_VPD_ADDR_F;
	ret = FUNC4(adapter);
	if (ret) {
		FUNC0(adapter, "VPD read of address %#x failed\n", addr);
		return ret;
	}

	/*
	 * Grab the returned data, swizzle it into our endianness and
	 * return success.
	 */
	FUNC2(adapter, base + PCI_VPD_DATA, data);
	*data = FUNC1(*data);
	return 0;
}