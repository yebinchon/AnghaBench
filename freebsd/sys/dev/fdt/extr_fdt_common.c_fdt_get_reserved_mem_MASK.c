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
typedef  int /*<<< orphan*/  u_long ;
struct mem_region {int /*<<< orphan*/  mr_size; int /*<<< orphan*/  mr_start; } ;
typedef  int /*<<< orphan*/  reg ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  pcell_t ;

/* Variables and functions */
 int ENXIO ; 
 int FDT_REG_CELLS ; 
 int FUNC0 (int) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (int,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int) ; 

int
FUNC8(struct mem_region *reserved, int *mreserved)
{
	pcell_t reg[FDT_REG_CELLS];
	phandle_t child, root;
	int addr_cells, size_cells;
	int i, rv;

	root = FUNC1("/reserved-memory");
	if (root == -1) {
		return (ENXIO);
	}

	if ((rv = FUNC5(root, &addr_cells, &size_cells)) != 0)
		return (rv);

	if (addr_cells + size_cells > FDT_REG_CELLS)
		FUNC7("Too many address and size cells %d %d", addr_cells,
		    size_cells);

	i = 0;
	for (child = FUNC0(root); child != 0; child = FUNC4(child)) {
		if (!FUNC3(child, "no-map"))
			continue;

		rv = FUNC2(child, "reg", reg, sizeof(reg));
		if (rv <= 0)
			/* XXX: Does a no-map of a dynamic range make sense? */
			continue;

		FUNC6(reg, addr_cells, size_cells,
		    (u_long *)&reserved[i].mr_start,
		    (u_long *)&reserved[i].mr_size);
		i++;
	}

	*mreserved = i;

	return (0);
}