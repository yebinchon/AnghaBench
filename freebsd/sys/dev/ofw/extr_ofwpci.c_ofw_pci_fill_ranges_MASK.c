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
struct ofw_pci_range {int pci_hi; int pci; int host; int size; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  size_cells ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  pci_address_cells ;
typedef  int /*<<< orphan*/  host_address_cells ;
typedef  int cell_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ) ; 
 int* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(phandle_t node, struct ofw_pci_range *ranges)
{
	int host_address_cells = 1, pci_address_cells = 3, size_cells = 2;
	cell_t *base_ranges;
	ssize_t nbase_ranges;
	int nranges;
	int i, j, k;

	FUNC0(FUNC2(node), "#address-cells", &host_address_cells,
	    sizeof(host_address_cells));
	FUNC0(node, "#address-cells", &pci_address_cells,
	    sizeof(pci_address_cells));
	FUNC0(node, "#size-cells", &size_cells, sizeof(size_cells));

	nbase_ranges = FUNC1(node, "ranges");
	if (nbase_ranges <= 0)
		return (-1);
	nranges = nbase_ranges / sizeof(cell_t) /
	    (pci_address_cells + host_address_cells + size_cells);

	base_ranges = FUNC4(nbase_ranges, M_DEVBUF, M_WAITOK);
	FUNC0(node, "ranges", base_ranges, nbase_ranges);

	for (i = 0, j = 0; i < nranges; i++) {
		ranges[i].pci_hi = base_ranges[j++];
		ranges[i].pci = 0;
		for (k = 0; k < pci_address_cells - 1; k++) {
			ranges[i].pci <<= 32;
			ranges[i].pci |= base_ranges[j++];
		}
		ranges[i].host = 0;
		for (k = 0; k < host_address_cells; k++) {
			ranges[i].host <<= 32;
			ranges[i].host |= base_ranges[j++];
		}
		ranges[i].size = 0;
		for (k = 0; k < size_cells; k++) {
			ranges[i].size <<= 32;
			ranges[i].size |= base_ranges[j++];
		}
	}

	FUNC3(base_ranges, M_DEVBUF);
	return (nranges);
}