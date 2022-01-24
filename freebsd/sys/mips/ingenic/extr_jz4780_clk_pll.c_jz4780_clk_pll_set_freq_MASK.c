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
 unsigned int CGU_PLL_M_WIDTH ; 
 int /*<<< orphan*/  CGU_PLL_N ; 
 unsigned int CGU_PLL_N_WIDTH ; 
 int /*<<< orphan*/  CGU_PLL_OD ; 
 int /*<<< orphan*/  FUNC0 (struct jz4780_clk_pll_sc*) ; 
 int FUNC1 (struct jz4780_clk_pll_sc*,int /*<<< orphan*/ ) ; 
 int CLK_SET_DRYRUN ; 
 int CLK_SET_ROUND_DOWN ; 
 int CLK_SET_ROUND_UP ; 
 int /*<<< orphan*/  FUNC2 (struct jz4780_clk_pll_sc*) ; 
 int /*<<< orphan*/  FUNC3 (struct jz4780_clk_pll_sc*,int /*<<< orphan*/ ,int) ; 
 int ERANGE ; 
 int MHZ ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 struct jz4780_clk_pll_sc* FUNC6 (struct clknode*) ; 
 int FUNC7 (struct jz4780_clk_pll_sc*) ; 

__attribute__((used)) static int
FUNC8(struct clknode *clk, uint64_t fin,
    uint64_t *fout, int flags, int *stop)
{
	struct jz4780_clk_pll_sc *sc;
	uint32_t reg, m, n, od;
	int rv;

	sc = FUNC6(clk);

	/* Should be able to figure all clocks with m & n only */
	od = 1;

	m = FUNC4((uint32_t)(*fout / MHZ), (1u << CGU_PLL_M_WIDTH));
	m = FUNC4(m, 1);

	n = FUNC4((uint32_t)(fin / MHZ), (1u << CGU_PLL_N_WIDTH));
	n = FUNC4(n, 1);

	if (flags & CLK_SET_DRYRUN) {
		if (((flags & (CLK_SET_ROUND_UP | CLK_SET_ROUND_DOWN)) == 0) &&
		    (*fout != (((fin / n) * m) / od)))
		return (ERANGE);

		*fout = ((fin / n) * m) / od;
		return (0);
	}

	FUNC0(sc);
	reg = FUNC1(sc, sc->clk_reg);

	/* Set the calculated values */
	reg = FUNC5(reg, CGU_PLL_M, m - 1);
	reg = FUNC5(reg, CGU_PLL_N, n - 1);
	reg = FUNC5(reg, CGU_PLL_OD, od - 1);

	/* Enable the PLL */
	reg = FUNC5(reg, CGU_PLL_EN, 1);
	reg = FUNC5(reg, CGU_PLL_BP, 0);

	/* Initiate the change */
	FUNC3(sc, sc->clk_reg, reg);

	/* Wait for PLL to lock */
	rv = FUNC7(sc);
	FUNC2(sc);
	if (rv != 0)
		return (rv);

	*fout = ((fin / n) * m) / od;
	return (0);
}