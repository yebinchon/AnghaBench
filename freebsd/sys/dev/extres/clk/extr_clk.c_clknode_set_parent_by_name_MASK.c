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
typedef  int /*<<< orphan*/  uint64_t ;
struct clknode {int parent_cnt; int parent_idx; struct clknode* parent; int /*<<< orphan*/ ** parent_names; } ;

/* Variables and functions */
 int FUNC0 (struct clknode*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC3 (struct clknode*,int) ; 
 int FUNC4 (struct clknode*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct clknode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char const*) ; 

int
FUNC7(struct clknode *clknode, const char *name)
{
	int rv;
	uint64_t freq;
	int  oldidx, idx;

	/* We have exclusive topology lock, node lock is not needed. */
	FUNC2();

	if (clknode->parent_cnt == 0)
		return (0);

	/*
	 * If this node doesnt have mux, then passthrough request to parent.
	 * This feature is used in clock domain initialization and allows us to
	 * set clock source and target frequency on the tail node of the clock
	 * chain.
	 */
	if (clknode->parent_cnt == 1) {
		rv = FUNC7(clknode->parent, name);
		return (rv);
	}

	for (idx = 0; idx < clknode->parent_cnt; idx++) {
		if (clknode->parent_names[idx] == NULL)
			continue;
		if (FUNC6(clknode->parent_names[idx], name) == 0)
			break;
	}
	if (idx >= clknode->parent_cnt) {
		return (ENXIO);
	}
	if (clknode->parent_idx == idx)
		return (0);

	oldidx = clknode->parent_idx;
	FUNC3(clknode, idx);
	rv = FUNC0(clknode, idx);
	if (rv != 0) {
		FUNC3(clknode, oldidx);
		FUNC1(clknode);
		return (rv);
	}
	rv = FUNC4(clknode->parent, &freq);
	if (rv != 0)
		return (rv);
	rv = FUNC5(clknode, freq);
	return (rv);
}