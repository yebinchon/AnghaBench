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
typedef  int /*<<< orphan*/  uint64_t ;
struct clknode {scalar_t__ ref_cnt; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__* clk_t ;
struct TYPE_3__ {struct clknode* clknode; } ;

/* Variables and functions */
 int CLK_SET_DRYRUN ; 
 int CLK_SET_USER_MASK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (struct clknode*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int
FUNC4(clk_t clk, uint64_t freq, int flags)
{
	int rv;
	struct clknode *clknode;

	flags &= CLK_SET_USER_MASK;
	clknode = clk->clknode;
	FUNC2(clknode->ref_cnt > 0,
	   ("Attempt to access unreferenced clock: %s\n", clknode->name));

	FUNC1();
	rv = FUNC3(clknode, freq, flags | CLK_SET_DRYRUN, 0);
	FUNC0();
	return (rv);
}