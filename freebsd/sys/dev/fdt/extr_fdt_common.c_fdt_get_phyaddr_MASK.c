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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  phy_reg ;
typedef  int /*<<< orphan*/  phy_handle ;
typedef  scalar_t__ phandle_t ;
typedef  int pcell_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (scalar_t__,char*,void*,int) ; 
 scalar_t__ FUNC1 (scalar_t__,char*,void*,int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

int
FUNC9(phandle_t node, device_t dev, int *phy_addr, void **phy_sc)
{
	phandle_t phy_node;
	pcell_t phy_handle, phy_reg;
	uint32_t i;
	device_t parent, child;

	if (FUNC0(node, "phy-handle", (void *)&phy_handle,
	    sizeof(phy_handle)) <= 0)
		return (ENXIO);

	phy_node = FUNC2(phy_handle);

	if (FUNC0(phy_node, "reg", (void *)&phy_reg,
	    sizeof(phy_reg)) <= 0)
		return (ENXIO);

	*phy_addr = phy_reg;

	if (phy_sc == NULL)
		return (0);

	/*
	 * Search for softc used to communicate with phy.
	 */

	/*
	 * Step 1: Search for ancestor of the phy-node with a "phy-handle"
	 * property set.
	 */
	phy_node = FUNC3(phy_node);
	while (phy_node != 0) {
		if (FUNC1(phy_node, "phy-handle", (void *)&phy_handle,
		    sizeof(phy_handle)) > 0)
			break;
		phy_node = FUNC3(phy_node);
	}
	if (phy_node == 0)
		return (ENXIO);

	/*
	 * Step 2: For each device with the same parent and name as ours
	 * compare its node with the one found in step 1, ancestor of phy
	 * node (stored in phy_node).
	 */
	parent = FUNC6(dev);
	i = 0;
	child = FUNC4(parent, FUNC5(dev), i);
	while (child != NULL) {
		if (FUNC8(child) == phy_node)
			break;
		i++;
		child = FUNC4(parent, FUNC5(dev), i);
	}
	if (child == NULL)
		return (ENXIO);

	/*
	 * Use softc of the device found.
	 */
	*phy_sc = (void *)FUNC7(child);

	return (0);
}