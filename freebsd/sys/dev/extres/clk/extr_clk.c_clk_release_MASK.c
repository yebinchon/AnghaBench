#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct clknode {scalar_t__ ref_cnt; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__* clk_t ;
struct TYPE_4__ {scalar_t__ enable_cnt; struct clknode* clknode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC1 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  M_CLOCK ; 
 int /*<<< orphan*/  FUNC5 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int
FUNC7(clk_t clk)
{
	struct clknode *clknode;

	clknode = clk->clknode;
	FUNC4(clknode->ref_cnt > 0,
	   ("Attempt to access unreferenced clock: %s\n", clknode->name));
	FUNC2();
	while (clk->enable_cnt > 0) {
		FUNC5(clknode);
		clk->enable_cnt--;
	}
	FUNC1(clknode);
	clknode->ref_cnt--;
	FUNC0(clknode);
	FUNC3();

	FUNC6(clk, M_CLOCK);
	return (0);
}