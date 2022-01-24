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
typedef  scalar_t__ u_long ;
typedef  int /*<<< orphan*/  ranges ;
typedef  scalar_t__ phandle_t ;
typedef  int pcell_t ;
typedef  int /*<<< orphan*/  cell_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int ERANGE ; 
 scalar_t__ FUNC0 (scalar_t__,char*,int*,int) ; 
 int FUNC1 (scalar_t__,char*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ ULONG_MAX ; 
 scalar_t__ FUNC3 (scalar_t__,int*,int*) ; 
 scalar_t__ FUNC4 (void*,int) ; 
 int FUNC5 (scalar_t__) ; 

__attribute__((used)) static int
FUNC6(phandle_t node, u_long addr, u_long *base,
    u_long *size)
{
	pcell_t ranges[32], *rangesptr;
	pcell_t addr_cells, size_cells, par_addr_cells;
	u_long bus_addr, par_bus_addr, pbase, psize;
	int err, i, len, tuple_size, tuples;

	if (node == 0) {
		*base = 0;
		*size = ULONG_MAX;
		return (0);
	}

	if ((FUNC3(node, &addr_cells, &size_cells)) != 0)
		return (ENXIO);
	/*
	 * Process 'ranges' property.
	 */
	par_addr_cells = FUNC5(node);
	if (par_addr_cells > 2) {
		return (ERANGE);
	}

	len = FUNC1(node, "ranges");
	if (len < 0)
		return (-1);
	if (len > sizeof(ranges))
		return (ENOMEM);
	if (len == 0) {
		return (FUNC6(FUNC2(node), addr,
		    base, size));
	}

	if (FUNC0(node, "ranges", ranges, sizeof(ranges)) <= 0)
		return (EINVAL);

	tuple_size = addr_cells + par_addr_cells + size_cells;
	tuples = len / (tuple_size * sizeof(cell_t));

	if (par_addr_cells > 2 || addr_cells > 2 || size_cells > 2)
		return (ERANGE);

	*base = 0;
	*size = 0;

	for (i = 0; i < tuples; i++) {
		rangesptr = &ranges[i * tuple_size];

		bus_addr = FUNC4((void *)rangesptr, addr_cells);
		if (bus_addr != addr)
			continue;
		rangesptr += addr_cells;

		par_bus_addr = FUNC4((void *)rangesptr, par_addr_cells);
		rangesptr += par_addr_cells;

		err = FUNC6(FUNC2(node), par_bus_addr,
		    &pbase, &psize);
		if (err > 0)
			return (err);
		if (err == 0)
			*base = pbase;
		else
			*base = par_bus_addr;

		*size = FUNC4((void *)rangesptr, size_cells);

		return (0);
	}

	return (EINVAL);
}