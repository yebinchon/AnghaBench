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
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int pcell_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int ERANGE ; 
 int FDT_RANGES_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ ULONG_MAX ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int*,int*) ; 
 scalar_t__ FUNC4 (void*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*,scalar_t__*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

int
FUNC7(phandle_t node, int range_id, u_long *base, u_long *size)
{
	pcell_t ranges[FDT_RANGES_SIZE], *rangesptr;
	pcell_t addr_cells, size_cells, par_addr_cells;
	u_long par_bus_addr, pbase, psize;
	int err, len;

	if ((FUNC3(node, &addr_cells, &size_cells)) != 0)
		return (ENXIO);
	/*
	 * Process 'ranges' property.
	 */
	par_addr_cells = FUNC6(node);
	if (par_addr_cells > 2)
		return (ERANGE);

	len = FUNC1(node, "ranges");
	if (len > sizeof(ranges))
		return (ENOMEM);
	if (len == 0) {
		*base = 0;
		*size = ULONG_MAX;
		return (0);
	}

	if (!(range_id < len))
		return (ERANGE);

	if (FUNC0(node, "ranges", ranges, sizeof(ranges)) <= 0)
		return (EINVAL);

	if (par_addr_cells > 2 || addr_cells > 2 || size_cells > 2)
		return (ERANGE);

	*base = 0;
	*size = 0;
	rangesptr = &ranges[range_id];

	*base = FUNC4((void *)rangesptr, addr_cells);
	rangesptr += addr_cells;

	par_bus_addr = FUNC4((void *)rangesptr, par_addr_cells);
	rangesptr += par_addr_cells;

	err = FUNC5(FUNC2(node), par_bus_addr,
	   &pbase, &psize);
	if (err == 0)
		*base += pbase;
	else
		*base += par_bus_addr;

	*size = FUNC4((void *)rangesptr, size_cells);
	return (0);
}