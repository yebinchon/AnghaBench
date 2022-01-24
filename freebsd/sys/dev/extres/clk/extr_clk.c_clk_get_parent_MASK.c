#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct clknode {scalar_t__ ref_cnt; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__* clk_t ;
struct TYPE_5__ {int /*<<< orphan*/  dev; struct clknode* clknode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 TYPE_1__* FUNC3 (struct clknode*,int /*<<< orphan*/ ) ; 
 struct clknode* FUNC4 (struct clknode*) ; 

int
FUNC5(clk_t clk, clk_t *parent)
{
	struct clknode *clknode;
	struct clknode *parentnode;

	clknode = clk->clknode;
	FUNC2(clknode->ref_cnt > 0,
	   ("Attempt to access unreferenced clock: %s\n", clknode->name));

	FUNC0();
	parentnode = FUNC4(clknode);
	if (parentnode == NULL) {
		FUNC1();
		return (ENODEV);
	}
	*parent = FUNC3(parentnode, clk->dev);
	FUNC1();
	return (0);
}