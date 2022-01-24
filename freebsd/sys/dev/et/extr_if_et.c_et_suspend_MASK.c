#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct et_softc {TYPE_1__* ifp; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int if_drv_flags; } ;

/* Variables and functions */
 int FUNC0 (struct et_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct et_softc*,int /*<<< orphan*/ ,int) ; 
 int EM_PM_GIGEPHY_ENB ; 
 int /*<<< orphan*/  FUNC2 (struct et_softc*) ; 
 int /*<<< orphan*/  ET_PM ; 
 int ET_PM_PHY_SW_COMA ; 
 int ET_PM_RXCLK_GATE ; 
 int ET_PM_SYSCLK_GATE ; 
 int ET_PM_TXCLK_GATE ; 
 int /*<<< orphan*/  FUNC3 (struct et_softc*) ; 
 int IFF_DRV_RUNNING ; 
 struct et_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct et_softc*) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct et_softc *sc;
	uint32_t pmcfg;

	sc = FUNC4(dev);
	FUNC2(sc);
	if ((sc->ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
		FUNC5(sc);
	/* Diable all clocks and put PHY into COMA. */
	pmcfg = FUNC0(sc, ET_PM);
	pmcfg &= ~(EM_PM_GIGEPHY_ENB | ET_PM_SYSCLK_GATE | ET_PM_TXCLK_GATE |
	    ET_PM_RXCLK_GATE);
	pmcfg |= ET_PM_PHY_SW_COMA;
	FUNC1(sc, ET_PM, pmcfg);
	FUNC3(sc);
	return (0);
}