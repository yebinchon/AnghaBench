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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  u_long ;
struct mem_region {scalar_t__ mr_size; int /*<<< orphan*/  mr_start; } ;
typedef  int /*<<< orphan*/  reg ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  pcell_t ;

/* Variables and functions */
 int ENXIO ; 
 int ERANGE ; 
 int FDT_MEM_REGIONS ; 
 int FDT_REG_CELLS ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int,char*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC6(struct mem_region *mr, int *mrcnt, uint64_t *memsize)
{
	pcell_t reg[FDT_REG_CELLS * FDT_MEM_REGIONS];
	pcell_t *regp;
	phandle_t memory;
	uint64_t memory_size;
	int addr_cells, size_cells;
	int i, reg_len, rv, tuple_size, tuples;

	memory = FUNC0("/memory");
	if (memory == -1) {
		rv = ENXIO;
		goto out;
	}

	if ((rv = FUNC4(FUNC3(memory), &addr_cells,
	    &size_cells)) != 0)
		goto out;

	if (addr_cells > 2) {
		rv = ERANGE;
		goto out;
	}

	tuple_size = sizeof(pcell_t) * (addr_cells + size_cells);
	reg_len = FUNC2(memory, "reg");
	if (reg_len <= 0 || reg_len > sizeof(reg)) {
		rv = ERANGE;
		goto out;
	}

	if (FUNC1(memory, "reg", reg, reg_len) <= 0) {
		rv = ENXIO;
		goto out;
	}

	memory_size = 0;
	tuples = reg_len / tuple_size;
	regp = (pcell_t *)&reg;
	for (i = 0; i < tuples; i++) {

		rv = FUNC5(regp, addr_cells, size_cells,
			(u_long *)&mr[i].mr_start, (u_long *)&mr[i].mr_size);

		if (rv != 0)
			goto out;

		regp += addr_cells + size_cells;
		memory_size += mr[i].mr_size;
	}

	if (memory_size == 0) {
		rv = ERANGE;
		goto out;
	}

	*mrcnt = i;
	if (memsize != NULL)
		*memsize = memory_size;
	rv = 0;
out:
	return (rv);
}