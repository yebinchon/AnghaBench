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
struct clknode {scalar_t__ parent_cnt; int parent_idx; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int FUNC0 (struct clknode*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct clknode*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct clknode*,int /*<<< orphan*/ ) ; 

int
FUNC5(struct clknode *clknode, int idx)
{
	int rv;
	uint64_t freq;
	int  oldidx;

	/* We have exclusive topology lock, node lock is not needed. */
	FUNC1();

	if (clknode->parent_cnt == 0)
		return (0);

	if (clknode->parent_idx == idx)
		return (0);

	oldidx = clknode->parent_idx;
	FUNC2(clknode, idx);
	rv = FUNC0(clknode, idx);
	if (rv != 0) {
		FUNC2(clknode, oldidx);
		return (rv);
	}
	rv = FUNC3(clknode->parent, &freq);
	if (rv != 0)
		return (rv);
	rv = FUNC4(clknode, freq);
	return (rv);
}