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
typedef  int /*<<< orphan*/  uint32_t ;
struct clknode_mux_sc {int mask; int shift; int /*<<< orphan*/  offset; } ;
struct clknode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC1 (struct clknode*) ; 
 int FUNC2 (struct clknode*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct clknode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct clknode_mux_sc* FUNC4 (struct clknode*) ; 

__attribute__((used)) static int
FUNC5(struct clknode *clk, int idx)
{
	uint32_t reg;
	struct clknode_mux_sc *sc;
	int rv;

	sc = FUNC4(clk);

	FUNC0(clk);
	rv = FUNC2(clk, sc->offset, sc->mask << sc->shift,
	    (idx & sc->mask) << sc->shift);
	if (rv != 0) {
		FUNC1(clk);
		return (rv);
	}
	FUNC3(clk, sc->offset, &reg);
	FUNC1(clk);

	return(0);
}