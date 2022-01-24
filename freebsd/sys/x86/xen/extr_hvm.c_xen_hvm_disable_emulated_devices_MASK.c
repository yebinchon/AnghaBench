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
typedef  int /*<<< orphan*/  u_short ;

/* Variables and functions */
 int /*<<< orphan*/  XEN_MAGIC_IOPORT ; 
 scalar_t__ XMI_MAGIC ; 
 int /*<<< orphan*/  XMI_UNPLUG_IDE_DISKS ; 
 int /*<<< orphan*/  XMI_UNPLUG_NICS ; 
 scalar_t__ bootverbose ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ xen_disable_pv_disks ; 
 scalar_t__ xen_disable_pv_nics ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static void
FUNC4(void)
{
	u_short disable_devs = 0;

	if (FUNC3()) {
		/*
		 * No emulated devices in the PV case, so no need to unplug
		 * anything.
		 */
		if (xen_disable_pv_disks != 0 || xen_disable_pv_nics != 0)
			FUNC2("PV devices cannot be disabled in PV guests\n");
		return;
	}

	if (FUNC0(XEN_MAGIC_IOPORT) != XMI_MAGIC)
		return;

	if (xen_disable_pv_disks == 0) {
		if (bootverbose)
			FUNC2("XEN: disabling emulated disks\n");
		disable_devs |= XMI_UNPLUG_IDE_DISKS;
	}
	if (xen_disable_pv_nics == 0) {
		if (bootverbose)
			FUNC2("XEN: disabling emulated nics\n");
		disable_devs |= XMI_UNPLUG_NICS;
	}

	if (disable_devs != 0)
		FUNC1(XEN_MAGIC_IOPORT, disable_devs);
}