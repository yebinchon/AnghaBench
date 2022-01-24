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
struct clknode {int enable_cnt; int flags; scalar_t__ parent_cnt; struct clknode* parent; } ;

/* Variables and functions */
 int FUNC0 (struct clknode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC2 (struct clknode*) ; 
 int CLK_NODE_CANNOT_STOP ; 
 int /*<<< orphan*/  FUNC3 () ; 

int
FUNC4(struct clknode *clknode)
{
	int rv;

	FUNC3();
	rv = 0;

	FUNC2(clknode);
	/* Disable clock for each node in chain, starting from consumer. */
	if ((clknode->enable_cnt == 1) &&
	    ((clknode->flags & CLK_NODE_CANNOT_STOP) == 0)) {
		rv = FUNC0(clknode, 0);
		if (rv != 0) {
			FUNC1(clknode);
			return (rv);
		}
	}
	clknode->enable_cnt--;
	FUNC1(clknode);

	if (clknode->parent_cnt > 0) {
		rv = FUNC4(clknode->parent);
	}
	return (rv);
}