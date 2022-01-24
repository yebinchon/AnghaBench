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
struct clknode_mux_sc {int mask; int /*<<< orphan*/  mux_flags; int /*<<< orphan*/  shift; int /*<<< orphan*/  offset; } ;
struct clknode {int dummy; } ;
struct clkdom {int dummy; } ;
struct clk_mux_def {int width; int /*<<< orphan*/  mux_flags; int /*<<< orphan*/  shift; int /*<<< orphan*/  offset; int /*<<< orphan*/  clkdef; } ;

/* Variables and functions */
 struct clknode* FUNC0 (struct clkdom*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct clknode_mux_sc* FUNC1 (struct clknode*) ; 
 int /*<<< orphan*/  clknode_mux_class ; 
 int /*<<< orphan*/  FUNC2 (struct clkdom*,struct clknode*) ; 

int
FUNC3(struct clkdom *clkdom, struct clk_mux_def *clkdef)
{
	struct clknode *clk;
	struct clknode_mux_sc *sc;

	clk = FUNC0(clkdom, &clknode_mux_class, &clkdef->clkdef);
	if (clk == NULL)
		return (1);

	sc = FUNC1(clk);
	sc->offset = clkdef->offset;
	sc->shift = clkdef->shift;
	sc->mask =  (1 << clkdef->width) - 1;
	sc->mux_flags = clkdef->mux_flags;

	FUNC2(clkdom, clk);
	return (0);
}