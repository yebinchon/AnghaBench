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
struct resource {int dummy; } ;
struct mtx {int dummy; } ;
struct jz4780_clk_otg_sc {struct resource* clk_res; struct mtx* clk_mtx; } ;
struct clknode_init_def {int dummy; } ;
struct clknode {int dummy; } ;
struct clkdom {int dummy; } ;

/* Variables and functions */
 struct clknode* FUNC0 (struct clkdom*,int /*<<< orphan*/ *,struct clknode_init_def*) ; 
 struct jz4780_clk_otg_sc* FUNC1 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC2 (struct clkdom*,struct clknode*) ; 
 int /*<<< orphan*/  jz4780_clk_otg_class ; 

int FUNC3(struct clkdom *clkdom,
    struct clknode_init_def *clkdef, struct mtx *dev_mtx,
    struct resource *mem_res)
{
	struct clknode *clk;
	struct jz4780_clk_otg_sc *sc;

	clk = FUNC0(clkdom, &jz4780_clk_otg_class, clkdef);
	if (clk == NULL)
		return (1);

	sc = FUNC1(clk);
	sc->clk_mtx = dev_mtx;
	sc->clk_res = mem_res;
	FUNC2(clkdom, clk);
	return (0);
}