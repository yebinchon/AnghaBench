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
struct clknode_gate_sc {int shift; int mask; int ungated; int on_value; int /*<<< orphan*/  offset; } ;
struct clknode {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC1 (struct clknode*) ; 
 int FUNC2 (struct clknode*,int /*<<< orphan*/ ,int*) ; 
 struct clknode_gate_sc* FUNC3 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC4 (struct clknode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct clknode *clk, device_t dev)
{
	uint32_t reg;
	struct clknode_gate_sc *sc;
	int rv;

	sc = FUNC3(clk);
	FUNC0(clk);
	rv = FUNC2(clk, sc->offset, &reg);
	FUNC1(clk);
	if (rv != 0)
		return (rv);
	reg = (reg >> sc->shift) & sc->mask;
	sc->ungated = reg == sc->on_value ? 1 : 0;
	FUNC4(clk, 0);
	return(0);
}