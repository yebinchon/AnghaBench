#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct clknode {scalar_t__ ref_cnt; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__* clk_t ;
struct TYPE_3__ {scalar_t__ enable_cnt; struct clknode* clknode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (struct clknode*) ; 

int
FUNC4(clk_t clk)
{
	int rv;
	struct clknode *clknode;

	clknode = clk->clknode;
	FUNC2(clknode->ref_cnt > 0,
	   ("Attempt to access unreferenced clock: %s\n", clknode->name));
	FUNC2(clk->enable_cnt > 0,
	   ("Attempt to disable already disabled clock: %s\n", clknode->name));
	FUNC0();
	rv = FUNC3(clknode);
	if (rv == 0)
		clk->enable_cnt--;
	FUNC1();
	return (rv);
}