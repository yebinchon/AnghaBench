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
typedef  int u_int ;
struct bhnd_pwrctl_softc {int /*<<< orphan*/  res; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHIPC_PLL_ON_DELAY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct bhnd_pwrctl_softc*,int) ; 

u_int
FUNC2(struct bhnd_pwrctl_softc *sc)
{
	u_int pll_on_delay, slowminfreq;
	u_int fpdelay;

	fpdelay = 0;

	slowminfreq = FUNC1(sc, false);

	pll_on_delay = FUNC0(sc->res, CHIPC_PLL_ON_DELAY) + 2;
	pll_on_delay *= 1000000;
	pll_on_delay += (slowminfreq - 1);
	fpdelay = pll_on_delay / slowminfreq;

	return (fpdelay);
}