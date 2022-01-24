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
struct mii_data {int mii_media_status; int /*<<< orphan*/  mii_media_active; } ;
struct dwc_softc {int link_is_up; struct mii_data* mii_softc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CONF_DM ; 
 int CONF_FES ; 
 int CONF_PS ; 
 int /*<<< orphan*/  FUNC0 (struct dwc_softc*) ; 
#define  IFM_1000_SX 132 
#define  IFM_1000_T 131 
#define  IFM_100_TX 130 
#define  IFM_10_T 129 
 int IFM_ACTIVE ; 
 int IFM_FDX ; 
#define  IFM_NONE 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAC_CONFIGURATION ; 
 int FUNC3 (struct dwc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dwc_softc*,int /*<<< orphan*/ ,int) ; 
 struct dwc_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC7(device_t dev)
{
	struct dwc_softc *sc;
	struct mii_data *mii;
	uint32_t reg;

	/*
	 * Called by the MII bus driver when the PHY establishes
	 * link to set the MAC interface registers.
	 */

	sc = FUNC5(dev);

	FUNC0(sc);

	mii = sc->mii_softc;

	if (mii->mii_media_status & IFM_ACTIVE)
		sc->link_is_up = true;
	else
		sc->link_is_up = false;

	reg = FUNC3(sc, MAC_CONFIGURATION);
	switch (FUNC2(mii->mii_media_active)) {
	case IFM_1000_T:
	case IFM_1000_SX:
		reg &= ~(CONF_FES | CONF_PS);
		break;
	case IFM_100_TX:
		reg |= (CONF_FES | CONF_PS);
		break;
	case IFM_10_T:
		reg &= ~(CONF_FES);
		reg |= (CONF_PS);
		break;
	case IFM_NONE:
		sc->link_is_up = false;
		return;
	default:
		sc->link_is_up = false;
		FUNC6(dev, "Unsupported media %u\n",
		    FUNC2(mii->mii_media_active));
		return;
	}
	if ((FUNC1(mii->mii_media_active) & IFM_FDX) != 0)
		reg |= (CONF_DM);
	else
		reg &= ~(CONF_DM);
	FUNC4(sc, MAC_CONFIGURATION, reg);
}