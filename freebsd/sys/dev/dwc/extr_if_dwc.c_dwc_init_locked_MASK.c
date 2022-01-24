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
struct ifnet {int if_drv_flags; } ;
struct dwc_softc {int /*<<< orphan*/  dwc_callout; int /*<<< orphan*/  mii_softc; struct ifnet* ifp; } ;

/* Variables and functions */
 int CONF_ACS ; 
 int CONF_BE ; 
 int CONF_JD ; 
 int CONF_RE ; 
 int CONF_TE ; 
 int /*<<< orphan*/  FUNC0 (struct dwc_softc*) ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  INTERRUPT_ENABLE ; 
 int INT_EN_DEFAULT ; 
 int /*<<< orphan*/  MAC_CONFIGURATION ; 
 int MODE_FUF ; 
 int MODE_OSF ; 
 int MODE_RSF ; 
 int MODE_RTC_LEV32 ; 
 int MODE_RTC_SHIFT ; 
 int MODE_SR ; 
 int MODE_ST ; 
 int MODE_TSF ; 
 int /*<<< orphan*/  OPERATION_MODE ; 
 int FUNC1 (struct dwc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dwc_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct dwc_softc*) ; 
 int /*<<< orphan*/  dwc_tick ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct dwc_softc *sc)
{
	struct ifnet *ifp = sc->ifp;
	uint32_t reg;

	FUNC0(sc);

	if (ifp->if_drv_flags & IFF_DRV_RUNNING)
		return;

	ifp->if_drv_flags |= IFF_DRV_RUNNING;

	FUNC4(sc);

	/* Initializa DMA and enable transmitters */
	reg = FUNC1(sc, OPERATION_MODE);
	reg |= (MODE_TSF | MODE_OSF | MODE_FUF);
	reg &= ~(MODE_RSF);
	reg |= (MODE_RTC_LEV32 << MODE_RTC_SHIFT);
	FUNC2(sc, OPERATION_MODE, reg);

	FUNC2(sc, INTERRUPT_ENABLE, INT_EN_DEFAULT);

	/* Start DMA */
	reg = FUNC1(sc, OPERATION_MODE);
	reg |= (MODE_ST | MODE_SR);
	FUNC2(sc, OPERATION_MODE, reg);

	/* Enable transmitters */
	reg = FUNC1(sc, MAC_CONFIGURATION);
	reg |= (CONF_JD | CONF_ACS | CONF_BE);
	reg |= (CONF_TE | CONF_RE);
	FUNC2(sc, MAC_CONFIGURATION, reg);

	/*
	 * Call mii_mediachg() which will call back into dwc_miibus_statchg()
	 * to set up the remaining config registers based on current media.
	 */
	FUNC5(sc->mii_softc);
	FUNC3(&sc->dwc_callout, hz, dwc_tick, sc);
}