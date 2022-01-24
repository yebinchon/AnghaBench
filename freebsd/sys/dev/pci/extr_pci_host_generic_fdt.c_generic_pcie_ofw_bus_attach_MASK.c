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
struct generic_pcie_ofw_devinfo {int /*<<< orphan*/  di_dinfo; int /*<<< orphan*/  di_rl; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  pcell_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct generic_pcie_ofw_devinfo*) ; 
 int /*<<< orphan*/  FUNC4 (struct generic_pcie_ofw_devinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct generic_pcie_ofw_devinfo* FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct generic_pcie_ofw_devinfo *di;
	device_t child;
	phandle_t parent, node;
	pcell_t addr_cells, size_cells;

	parent = FUNC9(dev);
	if (parent > 0) {
		FUNC5(parent, &addr_cells, &size_cells);
		/* Iterate through all bus subordinates */
		for (node = FUNC0(parent); node > 0; node = FUNC1(node)) {

			/* Allocate and populate devinfo. */
			di = FUNC6(sizeof(*di), M_DEVBUF, M_WAITOK | M_ZERO);
			if (FUNC8(&di->di_dinfo, node) != 0) {
				FUNC4(di, M_DEVBUF);
				continue;
			}

			/* Initialize and populate resource list. */
			FUNC13(&di->di_rl);
			FUNC11(dev, node, addr_cells, size_cells,
			    &di->di_rl);
			FUNC10(dev, node, &di->di_rl, NULL);

			/* Add newbus device for this FDT node */
			child = FUNC2(dev, NULL, -1);
			if (child == NULL) {
				FUNC12(&di->di_rl);
				FUNC7(&di->di_dinfo);
				FUNC4(di, M_DEVBUF);
				continue;
			}

			FUNC3(child, di);
		}
	}

	return (0);
}