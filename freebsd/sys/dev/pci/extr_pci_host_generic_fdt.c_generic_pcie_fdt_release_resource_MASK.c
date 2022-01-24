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
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int PCI_RES_BUS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 

__attribute__((used)) static int
FUNC3(device_t dev, device_t child, int type,
    int rid, struct resource *res)
{

#if defined(NEW_PCIB) && defined(PCI_RES_BUS)
	if (type == PCI_RES_BUS) {
		return (pci_host_generic_core_release_resource(dev, child, type,
		    rid, res));
	}
#endif

	/* For PCIe devices that do not have FDT nodes, use PCIB method */
	if ((int)FUNC1(child) <= 0) {
		return (FUNC2(dev, child, type,
		    rid, res));
	}

	/* For other devices use OFW method */
	return (FUNC0(dev, child, type, rid, res));
}