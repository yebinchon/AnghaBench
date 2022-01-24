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
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  reg ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ *,size_t,size_t,void*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,size_t*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

int
FUNC8(phandle_t node, int idx, void *cell, size_t buflen)
{
	phandle_t cell_node, prov_node;
	device_t provider;
	uint32_t reg[2];
	int rv;

	rv = FUNC6(node, idx, &cell_node);
	if (rv != 0)
		return (rv);

	prov_node = FUNC4(cell_node);
	if (FUNC3(prov_node, "read-only"))
		return (ENXIO);

	/* Validate the reg property */
	if (FUNC2(cell_node, "reg", reg, sizeof(reg)) != sizeof(reg)) {
		if (bootverbose)
			FUNC7("nvmem_get_cell_by_idx: Cannot parse reg property of cell %d\n",
			    idx);
		return (ENXIO);
	}

	if (buflen != reg[1])
		return (EINVAL);

	provider = FUNC1(FUNC5(prov_node));
	if (provider == NULL) {
		if (bootverbose)
			FUNC7("nvmem_get_cell_by_idx: Cannot find the nvmem device\n");
		return (ENXIO);
	}

	rv = FUNC0(provider, reg[0], reg[1], cell);
	if (rv != 0) {
		return (rv);
	}

	return (0);
}