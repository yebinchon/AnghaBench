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
struct jz4780_clk_otg_sc {int dummy; } ;
struct clknode {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct jz4780_clk_otg_sc*) ; 
 int /*<<< orphan*/  FUNC1 (struct jz4780_clk_otg_sc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct jz4780_clk_otg_sc*) ; 
 int /*<<< orphan*/  FUNC3 (struct jz4780_clk_otg_sc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JZ_USBPCR1 ; 
 int /*<<< orphan*/  PCR_REFCLK_CORE ; 
 int /*<<< orphan*/  PCR_REFCLK_M ; 
 struct jz4780_clk_otg_sc* FUNC4 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC5 (struct clknode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct clknode *clk, device_t dev)
{
	struct jz4780_clk_otg_sc *sc;
	uint32_t reg;

	sc = FUNC4(clk);
	FUNC0(sc);
	/* Force the use fo the core clock */
	reg = FUNC1(sc, JZ_USBPCR1);
	reg &= ~PCR_REFCLK_M;
	reg |= PCR_REFCLK_CORE;
	FUNC3(sc, JZ_USBPCR1, reg);
	FUNC2(sc);

	FUNC5(clk, 0);
	return (0);
}