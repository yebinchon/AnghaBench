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
typedef  int /*<<< orphan*/  uint64_t ;
struct jz4780_clock_softc {int /*<<< orphan*/  clkdom; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/ * clk_t ;

/* Variables and functions */
 int /*<<< orphan*/  JZ4780_CLK_OTGPHY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct jz4780_clock_softc *sc)
{
	clk_t phy_clk, ext_clk;
	uint64_t phy_freq;
	int err;

	phy_clk = NULL;
	ext_clk = NULL;
	err = -1;

	/* Set phy timing by copying it from ext */
	if (FUNC0(sc->dev, sc->clkdom, JZ4780_CLK_OTGPHY,
	    &phy_clk) != 0)
		goto done;
	if (FUNC2(phy_clk, &ext_clk) != 0)
		goto done;
	if (FUNC1(ext_clk, &phy_freq) != 0)
		goto done;
	if (FUNC4(phy_clk, phy_freq, 0) != 0)
		goto done;
	err = 0;
done:
	FUNC3(ext_clk);
	FUNC3(phy_clk);

	return (err);
}