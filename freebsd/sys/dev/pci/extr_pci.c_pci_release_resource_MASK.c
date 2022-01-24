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
struct resource_list {int dummy; } ;
struct resource {int dummy; } ;
struct TYPE_2__ {int flags; scalar_t__ hdrtype; } ;
struct pci_devinfo {struct resource_list resources; TYPE_1__ cfg; } ;
typedef  TYPE_1__ pcicfgregs ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int EDOOFUS ; 
 int PCICFG_VF ; 
 scalar_t__ PCIM_HDRTYPE_BRIDGE ; 
#define  PCIR_IOBASEL_1 132 
#define  PCIR_MEMBASE_1 131 
#define  PCIR_PMBASEL_1 130 
#define  SYS_RES_IOPORT 129 
#define  SYS_RES_MEMORY 128 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 
 struct pci_devinfo* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 int FUNC5 (struct resource_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 

int
FUNC6(device_t dev, device_t child, int type, int rid,
    struct resource *r)
{
	struct pci_devinfo *dinfo;
	struct resource_list *rl;
	pcicfgregs *cfg;

	if (FUNC3(child) != dev)
		return (FUNC0(FUNC3(dev), child,
		    type, rid, r));

	dinfo = FUNC2(child);
	cfg = &dinfo->cfg;

#ifdef PCI_IOV
	if (dinfo->cfg.flags & PCICFG_VF) {
		switch (type) {
		/* VFs can't have I/O BARs. */
		case SYS_RES_IOPORT:
			return (EDOOFUS);
		case SYS_RES_MEMORY:
			return (pci_vf_release_mem_resource(dev, child, rid,
			    r));
		}

		/* Fall through for other types of resource allocations. */
	}
#endif

#ifdef NEW_PCIB
	/*
	 * PCI-PCI bridge I/O window resources are not BARs.  For
	 * those allocations just pass the request up the tree.
	 */
	if (cfg->hdrtype == PCIM_HDRTYPE_BRIDGE &&
	    (type == SYS_RES_IOPORT || type == SYS_RES_MEMORY)) {
		switch (rid) {
		case PCIR_IOBASEL_1:
		case PCIR_MEMBASE_1:
		case PCIR_PMBASEL_1:
			return (bus_generic_release_resource(dev, child, type,
			    rid, r));
		}
	}
#endif

	rl = &dinfo->resources;
	return (FUNC5(rl, dev, child, type, rid, r));
}