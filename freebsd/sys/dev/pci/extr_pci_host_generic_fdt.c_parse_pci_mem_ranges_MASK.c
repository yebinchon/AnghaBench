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
struct generic_pcie_core_softc {int nranges; TYPE_1__* ranges; } ;
typedef  int /*<<< orphan*/  size_cells ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  pci_addr_cells ;
typedef  int pcell_t ;
typedef  int /*<<< orphan*/  parent_addr_cells ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int cell_t ;
struct TYPE_2__ {int pci_base; int phys_base; int size; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FLAG_IO ; 
 int /*<<< orphan*/  FLAG_MEM ; 
 int MAX_RANGES_TUPLES ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int SPACE_CODE_IO_SPACE ; 
 int SPACE_CODE_MASK ; 
 int SPACE_CODE_SHIFT ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ) ; 
 int* FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev, struct generic_pcie_core_softc *sc)
{
	pcell_t pci_addr_cells, parent_addr_cells;
	pcell_t attributes, size_cells;
	cell_t *base_ranges;
	int nbase_ranges;
	phandle_t node;
	int i, j, k;
	int tuple;

	node = FUNC6(dev);

	FUNC0(node, "#address-cells", &pci_addr_cells,
					sizeof(pci_addr_cells));
	FUNC0(node, "#size-cells", &size_cells,
					sizeof(size_cells));
	FUNC0(FUNC2(node), "#address-cells", &parent_addr_cells,
					sizeof(parent_addr_cells));

	if (parent_addr_cells > 2 || pci_addr_cells != 3 || size_cells > 2) {
		FUNC3(dev,
		    "Unexpected number of address or size cells in FDT\n");
		return (ENXIO);
	}

	nbase_ranges = FUNC1(node, "ranges");
	sc->nranges = nbase_ranges / sizeof(cell_t) /
	    (parent_addr_cells + pci_addr_cells + size_cells);
	base_ranges = FUNC5(nbase_ranges, M_DEVBUF, M_WAITOK);
	FUNC0(node, "ranges", base_ranges, nbase_ranges);

	for (i = 0, j = 0; i < sc->nranges; i++) {
		attributes = (base_ranges[j++] >> SPACE_CODE_SHIFT) & \
							SPACE_CODE_MASK;
		if (attributes == SPACE_CODE_IO_SPACE) {
			sc->ranges[i].flags |= FLAG_IO;
		} else {
			sc->ranges[i].flags |= FLAG_MEM;
		}

		sc->ranges[i].pci_base = 0;
		for (k = 0; k < (pci_addr_cells - 1); k++) {
			sc->ranges[i].pci_base <<= 32;
			sc->ranges[i].pci_base |= base_ranges[j++];
		}
		sc->ranges[i].phys_base = 0;
		for (k = 0; k < parent_addr_cells; k++) {
			sc->ranges[i].phys_base <<= 32;
			sc->ranges[i].phys_base |= base_ranges[j++];
		}
		sc->ranges[i].size = 0;
		for (k = 0; k < size_cells; k++) {
			sc->ranges[i].size <<= 32;
			sc->ranges[i].size |= base_ranges[j++];
		}
	}

	for (; i < MAX_RANGES_TUPLES; i++) {
		/* zero-fill remaining tuples to mark empty elements in array */
		sc->ranges[i].pci_base = 0;
		sc->ranges[i].phys_base = 0;
		sc->ranges[i].size = 0;
	}

	if (bootverbose) {
		for (tuple = 0; tuple < MAX_RANGES_TUPLES; tuple++) {
			FUNC3(dev,
			    "\tPCI addr: 0x%jx, CPU addr: 0x%jx, Size: 0x%jx\n",
			    sc->ranges[tuple].pci_base,
			    sc->ranges[tuple].phys_base,
			    sc->ranges[tuple].size);
		}
	}

	FUNC4(base_ranges, M_DEVBUF);
	return (0);
}