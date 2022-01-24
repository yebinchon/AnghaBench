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
typedef  scalar_t__ phandle_t ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (scalar_t__,char*,int,void**) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 

__attribute__((used)) static int
FUNC5(phandle_t node, int idx, phandle_t *cell)
{
	phandle_t *p_cell;
	phandle_t cell_node;
	int ncell;

	if (!FUNC1(node, "nvmem-cells") ||
	    !FUNC1(node, "nvmem-cell-names"))
		return (ENOENT);

	ncell = FUNC0(node, "nvmem-cells", sizeof(*p_cell), (void **)&p_cell);
	if (ncell <= 0)
		return (ENOENT);

	cell_node = FUNC2(p_cell[idx]);
	if (cell_node == p_cell[idx]) {
		if (bootverbose)
			FUNC4("nvmem_get_node: Cannot resolve phandle %x\n",
			    p_cell[idx]);
		FUNC3(p_cell);
		return (ENOENT);
	}

	FUNC3(p_cell);
	*cell = cell_node;

	return (0);
}