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
struct phynode {scalar_t__ ofw_node; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (struct phynode*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct phynode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  phylist_link ; 
 int /*<<< orphan*/  phynode_list ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

struct phynode *
FUNC8(struct phynode *phynode)
{
	int rv;

#ifdef FDT
	if (phynode->ofw_node <= 0)
		phynode->ofw_node = ofw_bus_get_node(phynode->pdev);
	if (phynode->ofw_node <= 0)
		return (NULL);
#endif

	rv = FUNC2(phynode);
	if (rv != 0) {
		FUNC7("PHYNODE_INIT failed: %d\n", rv);
		return (NULL);
	}

	FUNC4();
	FUNC5(&phynode_list, phynode, phylist_link);
	FUNC3();
#ifdef FDT
	OF_device_register_xref(OF_xref_from_node(phynode->ofw_node),
	    phynode->pdev);
#endif
	return (phynode);
}