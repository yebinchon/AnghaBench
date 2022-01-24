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
struct clknode {scalar_t__ parent_cnt; char* name; int /*<<< orphan*/  freq; struct clknode* parent; } ;

/* Variables and functions */
 int FUNC0 (struct clknode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC2 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

int
FUNC5(struct clknode *clknode, uint64_t *freq)
{
	int rv;

	FUNC3();

	/* Use cached value, if it exists. */
	*freq  = clknode->freq;
	if (*freq != 0)
		return (0);

	/* Get frequency from parent, if the clock has a parent. */
	if (clknode->parent_cnt > 0) {
		rv = FUNC5(clknode->parent, freq);
		if (rv != 0) {
			return (rv);
		}
	}

	/* And recalculate my output frequency. */
	FUNC2(clknode);
	rv = FUNC0(clknode, freq);
	if (rv != 0) {
		FUNC1(clknode);
		FUNC4("Cannot get frequency for clk: %s, error: %d\n",
		    clknode->name, rv);
		return (rv);
	}

	/* Save new frequency to cache. */
	clknode->freq = *freq;
	FUNC1(clknode);
	return (0);
}