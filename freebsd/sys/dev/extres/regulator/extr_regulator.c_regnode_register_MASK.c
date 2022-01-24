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
struct regnode {scalar_t__ ofw_node; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (struct regnode*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct regnode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  reglist_link ; 
 int /*<<< orphan*/  regnode_list ; 

struct regnode *
FUNC8(struct regnode *regnode)
{
	int rv;

#ifdef FDT
	if (regnode->ofw_node <= 0)
		regnode->ofw_node = ofw_bus_get_node(regnode->pdev);
	if (regnode->ofw_node <= 0)
		return (NULL);
#endif

	rv = FUNC2(regnode);
	if (rv != 0) {
		FUNC7("REGNODE_INIT failed: %d\n", rv);
		return (NULL);
	}

	FUNC4();
	FUNC5(&regnode_list, regnode, reglist_link);
	FUNC3();
#ifdef FDT
	OF_device_register_xref(OF_xref_from_node(regnode->ofw_node),
	    regnode->pdev);
#endif
	return (regnode);
}