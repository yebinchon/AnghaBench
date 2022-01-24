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
typedef  int u_int16_t ;
struct my_softc {int /*<<< orphan*/  my_dev; scalar_t__ my_want_auto; scalar_t__ my_autoneg; int /*<<< orphan*/  my_autoneg_timer; } ;

/* Variables and functions */
 scalar_t__ IFM_1000_T ; 
 scalar_t__ IFM_100_T4 ; 
 scalar_t__ IFM_100_TX ; 
 scalar_t__ IFM_10_T ; 
 int IFM_FDX ; 
 int IFM_GMASK ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct my_softc*) ; 
 int /*<<< orphan*/  PHY_BMCR ; 
 int PHY_BMCR_1000 ; 
 int PHY_BMCR_AUTONEGENBL ; 
 int PHY_BMCR_DUPLEX ; 
 int PHY_BMCR_LOOPBK ; 
 int PHY_BMCR_SPEEDSEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct my_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct my_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct my_softc*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8(struct my_softc * sc, int media)
{
	u_int16_t       bmcr;

	FUNC1(sc);
	/*
	 * If an autoneg session is in progress, stop it.
	 */
	if (sc->my_autoneg) {
		FUNC3(sc->my_dev, "canceling autoneg session\n");
		FUNC2(&sc->my_autoneg_timer);
		sc->my_autoneg = sc->my_want_auto = 0;
		bmcr = FUNC4(sc, PHY_BMCR);
		bmcr &= ~PHY_BMCR_AUTONEGENBL;
		FUNC5(sc, PHY_BMCR, bmcr);
	}
	FUNC3(sc->my_dev, "selecting MII, ");
	bmcr = FUNC4(sc, PHY_BMCR);
	bmcr &= ~(PHY_BMCR_AUTONEGENBL | PHY_BMCR_SPEEDSEL | PHY_BMCR_1000 |
		  PHY_BMCR_DUPLEX | PHY_BMCR_LOOPBK);

#if 0				/* this version did not support 1000M, */
	if (IFM_SUBTYPE(media) == IFM_1000_T) {
		printf("1000Mbps/T4, half-duplex\n");
		bmcr &= ~PHY_BMCR_SPEEDSEL;
		bmcr &= ~PHY_BMCR_DUPLEX;
		bmcr |= PHY_BMCR_1000;
	}
#endif
	if (FUNC0(media) == IFM_100_T4) {
		FUNC7("100Mbps/T4, half-duplex\n");
		bmcr |= PHY_BMCR_SPEEDSEL;
		bmcr &= ~PHY_BMCR_DUPLEX;
	}
	if (FUNC0(media) == IFM_100_TX) {
		FUNC7("100Mbps, ");
		bmcr |= PHY_BMCR_SPEEDSEL;
	}
	if (FUNC0(media) == IFM_10_T) {
		FUNC7("10Mbps, ");
		bmcr &= ~PHY_BMCR_SPEEDSEL;
	}
	if ((media & IFM_GMASK) == IFM_FDX) {
		FUNC7("full duplex\n");
		bmcr |= PHY_BMCR_DUPLEX;
	} else {
		FUNC7("half duplex\n");
		bmcr &= ~PHY_BMCR_DUPLEX;
	}
	FUNC5(sc, PHY_BMCR, bmcr);
	FUNC6(sc, bmcr);
	return;
}