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
typedef  int /*<<< orphan*/  reg ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  pcell_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

int
FUNC4(phandle_t node, u_long *base, u_long *size)
{
	pcell_t reg[4];
	int addr_cells, len, size_cells;

	if (FUNC2(FUNC1(node), &addr_cells, &size_cells))
		return (ENXIO);

	if ((sizeof(pcell_t) * (addr_cells + size_cells)) > sizeof(reg))
		return (ENOMEM);

	len = FUNC0(node, "reg", &reg, sizeof(reg));
	if (len <= 0)
		return (EINVAL);

	*base = FUNC3(&reg[0], addr_cells);
	*size = FUNC3(&reg[addr_cells], size_cells);
	return (0);
}