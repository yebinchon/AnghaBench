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
typedef  int /*<<< orphan*/  u_int ;
struct resource {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef  int /*<<< orphan*/  rman_res_t ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 struct resource* FUNC0 (scalar_t__,scalar_t__,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PCICFG_VF ; 
#define  SYS_RES_IOPORT 129 
#define  SYS_RES_MEMORY 128 
 struct pci_devinfo* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 struct resource* FUNC3 (scalar_t__,scalar_t__,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC4 (scalar_t__,scalar_t__,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct resource *
FUNC5(device_t dev, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
#ifdef PCI_IOV
	struct pci_devinfo *dinfo;
#endif

	if (FUNC2(child) != dev)
		return (FUNC0(FUNC2(dev), child,
		    type, rid, start, end, count, flags));

#ifdef PCI_IOV
	dinfo = device_get_ivars(child);
	if (dinfo->cfg.flags & PCICFG_VF) {
		switch (type) {
		/* VFs can't have I/O BARs. */
		case SYS_RES_IOPORT:
			return (NULL);
		case SYS_RES_MEMORY:
			return (pci_vf_alloc_mem_resource(dev, child, rid,
			    start, end, count, flags));
		}

		/* Fall through for other types of resource allocations. */
	}
#endif

	return (FUNC3(dev, child, type, rid, start, end,
	    count, 1, flags));
}