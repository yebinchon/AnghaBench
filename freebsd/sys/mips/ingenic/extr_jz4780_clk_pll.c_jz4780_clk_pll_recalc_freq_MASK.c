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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct jz4780_clk_pll_sc {int /*<<< orphan*/  clk_reg; } ;
struct clknode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CGU_PLL_BP ; 
 int /*<<< orphan*/  CGU_PLL_EN ; 
 int /*<<< orphan*/  CGU_PLL_M ; 
 int /*<<< orphan*/  CGU_PLL_N ; 
 int /*<<< orphan*/  CGU_PLL_OD ; 
 int FUNC0 (struct jz4780_clk_pll_sc*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct jz4780_clk_pll_sc* FUNC2 (struct clknode*) ; 

__attribute__((used)) static int
FUNC3(struct clknode *clk, uint64_t *freq)
{
	struct jz4780_clk_pll_sc *sc;
	uint32_t reg, m, n, od;

	sc = FUNC2(clk);
	reg = FUNC0(sc, sc->clk_reg);

	/* Check for PLL enabled status */
	if (FUNC1(reg, CGU_PLL_EN) == 0) {
		*freq = 0;
		return 0;
	}

	/* Return parent frequency if PPL is being bypassed */
	if (FUNC1(reg, CGU_PLL_BP) != 0)
		return 0;

	m = FUNC1(reg, CGU_PLL_M) + 1;
	n = FUNC1(reg, CGU_PLL_N) + 1;
	od = FUNC1(reg, CGU_PLL_OD) + 1;

	/* Sanity check values */
	if (m == 0 || n == 0 || od == 0) {
		*freq = 0;
		return (EINVAL);
	}

	*freq = ((*freq / n) * m) / od;
	return (0);
}