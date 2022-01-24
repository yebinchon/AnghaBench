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
typedef  int /*<<< orphan*/  uint8_t ;
struct clkbrd_softc {int /*<<< orphan*/ * sc_bh; int /*<<< orphan*/ * sc_bt; } ;

/* Variables and functions */
 size_t CLKBRD_CLK ; 
 int /*<<< orphan*/  CLK_CTRL ; 
 int /*<<< orphan*/  CLK_CTRL_RLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void *arg, int onoff)
{
	struct clkbrd_softc *sc;
	uint8_t r;

	sc = (struct clkbrd_softc *)arg;

	r = FUNC0(sc->sc_bt[CLKBRD_CLK], sc->sc_bh[CLKBRD_CLK],
	    CLK_CTRL);
	if (onoff)
		r |= CLK_CTRL_RLED;
	else
		r &= ~CLK_CTRL_RLED;
	FUNC1(sc->sc_bt[CLKBRD_CLK], sc->sc_bh[CLKBRD_CLK],
	    CLK_CTRL, r);
	FUNC0(sc->sc_bt[CLKBRD_CLK], sc->sc_bh[CLKBRD_CLK],
	    CLK_CTRL);
}