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
struct clknode_fixed_sc {scalar_t__ freq; } ;
struct clknode {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct clknode_fixed_sc* FUNC0 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC1 (struct clknode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct clknode *clk, device_t dev)
{
	struct clknode_fixed_sc *sc;

	sc = FUNC0(clk);
	if (sc->freq == 0)
		FUNC1(clk, 0);
	return(0);
}