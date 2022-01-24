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
struct xae_softc {int link_is_up; struct mii_data* mii_softc; } ;
struct mii_data {int mii_media_status; int /*<<< orphan*/  mii_media_active; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
#define  IFM_1000_SX 132 
#define  IFM_1000_T 131 
#define  IFM_100_TX 130 
#define  IFM_10_T 129 
 int IFM_ACTIVE ; 
#define  IFM_NONE 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPEED_10 ; 
 int /*<<< orphan*/  SPEED_100 ; 
 int /*<<< orphan*/  SPEED_1000 ; 
 int /*<<< orphan*/  FUNC1 (struct xae_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xae_softc*) ; 
 int /*<<< orphan*/  XAE_SPEED ; 
 struct xae_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC5(device_t dev)
{
	struct xae_softc *sc;
	struct mii_data *mii;
	uint32_t reg;

	/*
	 * Called by the MII bus driver when the PHY establishes
	 * link to set the MAC interface registers.
	 */

	sc = FUNC3(dev);

	FUNC2(sc);

	mii = sc->mii_softc;

	if (mii->mii_media_status & IFM_ACTIVE)
		sc->link_is_up = true;
	else
		sc->link_is_up = false;

	switch (FUNC0(mii->mii_media_active)) {
	case IFM_1000_T:
	case IFM_1000_SX:
		reg = SPEED_1000;
		break;
	case IFM_100_TX:
		reg = SPEED_100;
		break;
	case IFM_10_T:
		reg = SPEED_10;
		break;
	case IFM_NONE:
		sc->link_is_up = false;
		return;
	default:
		sc->link_is_up = false;
		FUNC4(dev, "Unsupported media %u\n",
		    FUNC0(mii->mii_media_active));
		return;
	}

	FUNC1(sc, XAE_SPEED, reg);
}