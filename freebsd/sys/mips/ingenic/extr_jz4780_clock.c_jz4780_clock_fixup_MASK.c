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
struct jz4780_clock_softc {int /*<<< orphan*/  clkdom; int /*<<< orphan*/  dev; } ;
struct clknode {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  JZ4780_CLK_UHC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct clknode* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct clknode*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct clknode*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC6(struct jz4780_clock_softc *sc)
{
	struct clknode *clk_uhc;
	int ret;

	/*
	 * Make UHC mux use MPLL as the source. It defaults to OTG_PHY
	 * and that somehow just does not work.
	 */
	FUNC1(sc->clkdom);

	/* Assume the worst */
	ret = ENXIO;

	clk_uhc = FUNC2(sc->clkdom, JZ4780_CLK_UHC);
	if (clk_uhc != NULL) {
		ret = FUNC4(clk_uhc, "mpll");
		if (ret != 0)
			FUNC5(sc->dev,
			    "unable to reparent uhc clock\n");
		else
			ret = FUNC3(clk_uhc, 48000000, 0, 0);
		if (ret != 0)
			FUNC5(sc->dev, "unable to init uhc clock\n");
	} else
		FUNC5(sc->dev, "unable to lookup uhc clock\n");

	FUNC0(sc->clkdom);
	return (ret);
}