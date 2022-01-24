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
typedef  int uint64_t ;
struct mem_region {int mr_start; int mr_size; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  size_cells ;
typedef  int phandle_t ;
typedef  int cell_t ;
typedef  int /*<<< orphan*/  address_cells ;
typedef  int /*<<< orphan*/  OFmem ;

/* Variables and functions */
 int BUS_SPACE_MAXADDR ; 
 int FUNC0 (char*) ; 
 int FUNC1 (int,char const*,int*,int) ; 
 int PHYS_AVAIL_SZ ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3(phandle_t node, const char *prop, struct mem_region *output)
{
	cell_t address_cells, size_cells;
	cell_t OFmem[4 * PHYS_AVAIL_SZ];
	int sz, i, j;
	phandle_t phandle;

	sz = 0;

	/*
	 * Get #address-cells from root node, defaulting to 1 if it cannot
	 * be found.
	 */
	phandle = FUNC0("/");
	if (FUNC1(phandle, "#address-cells", &address_cells, 
	    sizeof(address_cells)) < (ssize_t)sizeof(address_cells))
		address_cells = 1;
	if (FUNC1(phandle, "#size-cells", &size_cells, 
	    sizeof(size_cells)) < (ssize_t)sizeof(size_cells))
		size_cells = 1;

	/*
	 * Get memory.
	 */
	if (node == -1 || (sz = FUNC1(node, prop,
	    OFmem, sizeof(OFmem))) <= 0)
		FUNC2("Physical memory map not found");

	i = 0;
	j = 0;
	while (i < sz/sizeof(cell_t)) {
		output[j].mr_start = OFmem[i++];
		if (address_cells == 2) {
			output[j].mr_start <<= 32;
			output[j].mr_start += OFmem[i++];
		}
			
		output[j].mr_size = OFmem[i++];
		if (size_cells == 2) {
			output[j].mr_size <<= 32;
			output[j].mr_size += OFmem[i++];
		}

		if (output[j].mr_start > BUS_SPACE_MAXADDR)
			continue;

		/*
		 * Constrain memory to that which we can access.
		 * 32-bit AIM can only reference 32 bits of address currently,
		 * but Book-E can access 36 bits.
		 */
		if (((uint64_t)output[j].mr_start +
		    (uint64_t)output[j].mr_size - 1) >
		    BUS_SPACE_MAXADDR) {
			output[j].mr_size = BUS_SPACE_MAXADDR -
			    output[j].mr_start + 1;
		}

		j++;
	}

	return (j);
}