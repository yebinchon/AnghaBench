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
struct resource_list {int dummy; } ;
struct pci_devinfo {struct resource_list resources; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct pci_devinfo* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*,int,...) ; 
 scalar_t__ FUNC8 (struct resource_list*,char*,int /*<<< orphan*/ ,char*) ; 

int
FUNC9(device_t dev, device_t child)
{
	struct pci_devinfo *dinfo;
	struct resource_list *rl;
	int retval = 0;

	dinfo = FUNC4(child);
	rl = &dinfo->resources;

	retval += FUNC2(dev, child);

	retval += FUNC8(rl, "port", SYS_RES_IOPORT, "%#jx");
	retval += FUNC8(rl, "mem", SYS_RES_MEMORY, "%#jx");
	retval += FUNC8(rl, "irq", SYS_RES_IRQ, "%jd");
	if (FUNC3(dev))
		retval += FUNC7(" flags %#x", FUNC3(dev));

	retval += FUNC7(" at device %d.%d", FUNC6(child),
	    FUNC5(child));

	retval += FUNC0(dev, child);
	retval += FUNC1(dev, child);

	return (retval);
}