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
struct mtk_pci_range {void* len; void* base; } ;
typedef  int /*<<< orphan*/  ranges ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int pcell_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ERANGE ; 
 int FDT_RANGES_CELLS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_pci_range*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int*,int*) ; 
 void* FUNC4 (void*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(phandle_t node, struct mtk_pci_range *io_space,
    struct mtk_pci_range *mem_space)
{
	struct mtk_pci_range *pci_space;
	pcell_t ranges[FDT_RANGES_CELLS];
	pcell_t addr_cells, size_cells, par_addr_cells;
	pcell_t *rangesptr;
	pcell_t cell0, cell1, cell2;
	int tuple_size, tuples, i, rv, len;

	/*
	 * Retrieve 'ranges' property.
	 */
	if ((FUNC3(node, &addr_cells, &size_cells)) != 0)
		return (EINVAL);
	if (addr_cells != 3 || size_cells != 2)
		return (ERANGE);

	par_addr_cells = FUNC5(node);
	if (par_addr_cells != 1)
		return (ERANGE);

	len = FUNC1(node, "ranges");
	if (len > sizeof(ranges))
		return (ENOMEM);

	if (FUNC0(node, "ranges", ranges, sizeof(ranges)) <= 0)
		return (EINVAL);

	tuple_size = sizeof(pcell_t) * (addr_cells + par_addr_cells +
	    size_cells);
	tuples = len / tuple_size;

	/*
	 * Initialize the ranges so that we don't have to worry about
	 * having them all defined in the FDT. In particular, it is
	 * perfectly fine not to want I/O space on PCI busses.
	 */
	FUNC2(io_space, sizeof(*io_space));
	FUNC2(mem_space, sizeof(*mem_space));

	rangesptr = &ranges[0];
	for (i = 0; i < tuples; i++) {
		cell0 = FUNC4((void *)rangesptr, 1);
		rangesptr++;
		cell1 = FUNC4((void *)rangesptr, 1);
		rangesptr++;
		cell2 = FUNC4((void *)rangesptr, 1);
		rangesptr++;

		if (cell0 & 0x02000000) {
			pci_space = mem_space;
		} else if (cell0 & 0x01000000) {
			pci_space = io_space;
		} else {
			rv = ERANGE;
			goto out;
		}

		pci_space->base = FUNC4((void *)rangesptr,
		    par_addr_cells);
		rangesptr += par_addr_cells;

		pci_space->len = FUNC4((void *)rangesptr, size_cells);
		rangesptr += size_cells;
	}

	rv = 0;
out:
	return (rv);
}