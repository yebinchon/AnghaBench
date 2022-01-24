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
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int pcell_t ;
typedef  int /*<<< orphan*/  cell ;

/* Variables and functions */
 int ERANGE ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int*,int) ; 

int
FUNC1(phandle_t node, int *addr_cells, int *size_cells)
{
	pcell_t cell;
	int cell_size;

	/*
	 * Retrieve #{address,size}-cells.
	 */
	cell_size = sizeof(cell);
	if (FUNC0(node, "#address-cells", &cell, cell_size) < cell_size)
		cell = 2;
	*addr_cells = (int)cell;

	if (FUNC0(node, "#size-cells", &cell, cell_size) < cell_size)
		cell = 1;
	*size_cells = (int)cell;

	if (*addr_cells > 3 || *size_cells > 2)
		return (ERANGE);
	return (0);
}