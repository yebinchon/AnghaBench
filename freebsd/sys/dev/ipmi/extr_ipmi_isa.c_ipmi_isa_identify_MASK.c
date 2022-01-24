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
struct ipmi_get_info {scalar_t__ iface_type; } ;
typedef  int /*<<< orphan*/  driver_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  PCIR_DEVVENDOR ; 
 scalar_t__ SSIF_MODE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (struct ipmi_get_info*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(driver_t *driver, device_t parent)
{
	struct ipmi_get_info info;
	uint32_t devid;

	if (FUNC3(&info) && info.iface_type != SSIF_MODE &&
	    FUNC1(parent, "ipmi", -1) == NULL) {
		/*
		 * XXX: Hack alert.  On some broken systems, the IPMI
		 * interface is described via SMBIOS, but the actual
		 * IO resource is in a PCI device BAR, so we have to let
		 * the PCI device attach ipmi instead.  In that case don't
		 * create an isa ipmi device.  For now we hardcode the list
		 * of bus, device, function tuples.
		 */
		devid = FUNC4(0, 4, 2, PCIR_DEVVENDOR, 4);
		if (devid != 0xffffffff &&
		    FUNC2(devid & 0xffff, devid >> 16) != NULL)
			return;
		FUNC0(parent, 0, "ipmi", -1);
	}
}