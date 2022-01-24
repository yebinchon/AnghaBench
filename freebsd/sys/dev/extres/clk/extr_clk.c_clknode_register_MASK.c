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
struct clknode {int flags; } ;
struct clkdom {int /*<<< orphan*/  clknode_list; } ;

/* Variables and functions */
 int FUNC0 (struct clknode*,int /*<<< orphan*/ ) ; 
 int CLK_NODE_REGISTERED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct clknode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clkdom_link ; 
 int /*<<< orphan*/  FUNC2 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

struct clknode *
FUNC4(struct clkdom * clkdom, struct clknode *clknode)
{
	int rv;

	/* Skip already registered linked node */
	if (clknode->flags & CLK_NODE_REGISTERED)
		return(clknode);

	rv = FUNC0(clknode, FUNC2(clknode));
	if (rv != 0) {
		FUNC3(" CLKNODE_INIT failed: %d\n", rv);
		return (NULL);
	}

	FUNC1(&clkdom->clknode_list, clknode, clkdom_link);
	clknode->flags |= CLK_NODE_REGISTERED;
	return (clknode);
}