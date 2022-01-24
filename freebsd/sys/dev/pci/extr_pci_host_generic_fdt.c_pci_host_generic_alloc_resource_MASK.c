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
typedef  int /*<<< orphan*/  u_int ;
struct resource_list_entry {scalar_t__ start; scalar_t__ end; scalar_t__ count; } ;
struct resource {int dummy; } ;
struct generic_pcie_ofw_devinfo {int /*<<< orphan*/  di_rl; } ;
struct TYPE_4__ {TYPE_1__* ranges; } ;
struct generic_pcie_fdt_softc {TYPE_2__ base; } ;
typedef  scalar_t__ rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {scalar_t__ phys_base; scalar_t__ pci_base; scalar_t__ size; } ;

/* Variables and functions */
 int MAX_RANGES_TUPLES ; 
 int PCI_RES_BUS ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int SYS_RES_IOPORT ; 
 int SYS_RES_MEMORY ; 
 struct resource* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 struct generic_pcie_ofw_devinfo* FUNC2 (int /*<<< orphan*/ ) ; 
 struct generic_pcie_fdt_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 struct resource* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 struct resource_list_entry* FUNC7 (int /*<<< orphan*/ *,int,int) ; 

struct resource *
FUNC8(device_t dev, device_t child, int type,
    int *rid, rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
	struct generic_pcie_fdt_softc *sc;
	struct generic_pcie_ofw_devinfo *di;
	struct resource_list_entry *rle;
	int i;

#if defined(NEW_PCIB) && defined(PCI_RES_BUS)
	if (type == PCI_RES_BUS) {
		return (pci_host_generic_core_alloc_resource(dev, child, type, rid,
		    start, end, count, flags));
	}
#endif

	/* For PCIe devices that do not have FDT nodes, use PCIB method */
	if ((int)FUNC5(child) <= 0)
		return (FUNC6(dev, child, type,
		    rid, start, end, count, flags));

	/* For other devices use OFW method */
	sc = FUNC3(dev);

	if (FUNC0(start, end)) {
		if ((di = FUNC2(child)) == NULL)
			return (NULL);
		if (type == SYS_RES_IOPORT)
		    type = SYS_RES_MEMORY;

		/* Find defaults for this rid */
		rle = FUNC7(&di->di_rl, type, *rid);
		if (rle == NULL)
			return (NULL);

		start = rle->start;
		end = rle->end;
		count = rle->count;
	}

	if (type == SYS_RES_MEMORY) {
		/* Remap through ranges property */
		for (i = 0; i < MAX_RANGES_TUPLES; i++) {
			if (start >= sc->base.ranges[i].phys_base &&
			    end < (sc->base.ranges[i].pci_base +
			    sc->base.ranges[i].size)) {
				start -= sc->base.ranges[i].phys_base;
				start += sc->base.ranges[i].pci_base;
				end -= sc->base.ranges[i].phys_base;
				end += sc->base.ranges[i].pci_base;
				break;
			}
		}

		if (i == MAX_RANGES_TUPLES) {
			FUNC4(dev, "Could not map resource "
			    "%#jx-%#jx\n", start, end);
			return (NULL);
		}
	}

	return (FUNC1(dev, child, type, rid, start,
	    end, count, flags));
}