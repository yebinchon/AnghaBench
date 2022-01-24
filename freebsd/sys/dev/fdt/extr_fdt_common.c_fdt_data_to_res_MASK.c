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
typedef  int /*<<< orphan*/  pcell_t ;

/* Variables and functions */
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (void*,int) ; 

int
FUNC1(pcell_t *data, int addr_cells, int size_cells, u_long *start,
    u_long *count)
{

	/* Address portion. */
	if (addr_cells > 2)
		return (ERANGE);

	*start = FUNC0((void *)data, addr_cells);
	data += addr_cells;

	/* Size portion. */
	if (size_cells > 2)
		return (ERANGE);

	*count = FUNC0((void *)data, size_cells);
	return (0);
}