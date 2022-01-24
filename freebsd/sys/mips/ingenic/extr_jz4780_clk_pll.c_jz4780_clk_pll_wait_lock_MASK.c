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
struct jz4780_clk_pll_sc {int /*<<< orphan*/  clk_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  CGU_PLL_LOCK ; 
 int FUNC0 (struct jz4780_clk_pll_sc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ETIMEDOUT ; 
 int PLL_TIMEOUT ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct jz4780_clk_pll_sc *sc)
{
	int i;

	for (i = 0;  i < PLL_TIMEOUT; i++) {
		if (FUNC0(sc, sc->clk_reg) & FUNC2(CGU_PLL_LOCK, 1))
			return (0);
		FUNC1(1000);
	}
	return (ETIMEDOUT);
}