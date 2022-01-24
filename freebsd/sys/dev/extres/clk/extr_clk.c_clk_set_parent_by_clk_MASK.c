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
struct TYPE_4__ {struct clknode* clknode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (struct clknode*,int /*<<< orphan*/ ) ; 

int
FUNC4(clk_t clk, clk_t parent)
{
	int rv;
	struct clknode *clknode;
	struct clknode *parentnode;

	clknode = clk->clknode;
	parentnode = parent->clknode;
	FUNC2(clknode->ref_cnt > 0,
	   ("Attempt to access unreferenced clock: %s\n", clknode->name));
	FUNC2(parentnode->ref_cnt > 0,
	   ("Attempt to access unreferenced clock: %s\n", clknode->name));
	FUNC1();
	rv = FUNC3(clknode, parentnode->name);
	FUNC0();
	return (rv);
}