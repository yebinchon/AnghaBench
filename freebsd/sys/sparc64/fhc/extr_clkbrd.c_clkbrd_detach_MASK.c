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
struct clkbrd_softc {int /*<<< orphan*/ * sc_bh; int /*<<< orphan*/ * sc_bt; int /*<<< orphan*/  sc_clk_ctrl; int /*<<< orphan*/  sc_led_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 size_t CLKBRD_CLK ; 
 int /*<<< orphan*/  CLK_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct clkbrd_softc*) ; 
 struct clkbrd_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct clkbrd_softc *sc;

	sc = FUNC3(dev);

	FUNC4(sc->sc_led_dev);
	FUNC1(sc->sc_bt[CLKBRD_CLK], sc->sc_bh[CLKBRD_CLK],
	    CLK_CTRL, sc->sc_clk_ctrl);
	FUNC0(sc->sc_bt[CLKBRD_CLK], sc->sc_bh[CLKBRD_CLK],
	    CLK_CTRL);
	FUNC2(sc);

	return (0);
}