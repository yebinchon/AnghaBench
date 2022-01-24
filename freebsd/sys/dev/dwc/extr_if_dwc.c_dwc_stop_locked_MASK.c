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
struct dwc_softc {int /*<<< orphan*/  dwc_callout; scalar_t__ stats_harvest_count; scalar_t__ tx_watchdog_count; struct ifnet* ifp; } ;

/* Variables and functions */
 int CONF_RE ; 
 int CONF_TE ; 
 int /*<<< orphan*/  FUNC0 (struct dwc_softc*) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  MAC_CONFIGURATION ; 
 int MODE_FTF ; 
 int MODE_SR ; 
 int MODE_ST ; 
 int /*<<< orphan*/  OPERATION_MODE ; 
 int FUNC1 (struct dwc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct dwc_softc *sc)
{
	struct ifnet *ifp;
	uint32_t reg;

	FUNC0(sc);

	ifp = sc->ifp;
	ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
	sc->tx_watchdog_count = 0;
	sc->stats_harvest_count = 0;

	FUNC3(&sc->dwc_callout);

	/* Stop DMA TX */
	reg = FUNC1(sc, OPERATION_MODE);
	reg &= ~(MODE_ST);
	FUNC2(sc, OPERATION_MODE, reg);

	/* Flush TX */
	reg = FUNC1(sc, OPERATION_MODE);
	reg |= (MODE_FTF);
	FUNC2(sc, OPERATION_MODE, reg);

	/* Stop transmitters */
	reg = FUNC1(sc, MAC_CONFIGURATION);
	reg &= ~(CONF_TE | CONF_RE);
	FUNC2(sc, MAC_CONFIGURATION, reg);

	/* Stop DMA RX */
	reg = FUNC1(sc, OPERATION_MODE);
	reg &= ~(MODE_SR);
	FUNC2(sc, OPERATION_MODE, reg);
}