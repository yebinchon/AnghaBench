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
struct clknode {scalar_t__ parent_cnt; scalar_t__ enable_cnt; struct clknode* parent; } ;

/* Variables and functions */
 int FUNC0 (struct clknode*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC2 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

int
FUNC4(struct clknode *clknode)
{
	int rv;

	FUNC3();

	/* Enable clock for each node in chain, starting from source. */
	if (clknode->parent_cnt > 0) {
		rv = FUNC4(clknode->parent);
		if (rv != 0) {
			return (rv);
		}
	}

	/* Handle this node */
	FUNC2(clknode);
	if (clknode->enable_cnt == 0) {
		rv = FUNC0(clknode, 1);
		if (rv != 0) {
			FUNC1(clknode);
			return (rv);
		}
	}
	clknode->enable_cnt++;
	FUNC1(clknode);
	return (0);
}