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
typedef  int uint32_t ;
struct clknode_div_sc {int i_shift; int i_mask; int div_flags; int f_shift; int f_mask; int divider; int f_width; int /*<<< orphan*/  offset; } ;
struct clknode {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CLK_DIV_ZERO_BASED ; 
 int /*<<< orphan*/  FUNC0 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC1 (struct clknode*) ; 
 int FUNC2 (struct clknode*,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (struct clknode_div_sc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct clknode*) ; 
 struct clknode_div_sc* FUNC5 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC6 (struct clknode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct clknode *clk, device_t dev)
{
	uint32_t reg;
	struct clknode_div_sc *sc;
	uint32_t i_div, f_div;
	int rv;

	sc = FUNC5(clk);

	FUNC0(clk);
	rv = FUNC2(clk, sc->offset, &reg);
	FUNC1(clk);
	if (rv != 0)
		return (rv);

	i_div = (reg >> sc->i_shift) & sc->i_mask;
	if (!(sc->div_flags & CLK_DIV_ZERO_BASED))
		i_div++;
	f_div = (reg >> sc->f_shift) & sc->f_mask;
	sc->divider = i_div << sc->f_width | f_div;

	sc->divider = FUNC3(sc, sc->divider);
	if (sc->divider == 0)
		FUNC7("%s: divider is zero!\n", FUNC4(clk));

	FUNC6(clk, 0);
	return(0);
}