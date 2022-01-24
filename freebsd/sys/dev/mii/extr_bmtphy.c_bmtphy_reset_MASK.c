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
struct mii_softc {scalar_t__ mii_mpd_model; } ;

/* Variables and functions */
 int MII_BMTPHY_AUX2 ; 
 int MII_BMTPHY_INTR ; 
 scalar_t__ MII_MODEL_xxBROADCOM_BCM5221 ; 
 int FUNC0 (struct mii_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mii_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mii_softc*) ; 

__attribute__((used)) static void
FUNC3(struct mii_softc *sc)
{
	u_int16_t data;

	FUNC2(sc);

	if (sc->mii_mpd_model == MII_MODEL_xxBROADCOM_BCM5221) {
		/* Enable shadow register mode. */
		data = FUNC0(sc, 0x1f);
		FUNC1(sc, 0x1f, data | 0x0080);

		/* Enable APD (Auto PowerDetect). */
		data = FUNC0(sc, MII_BMTPHY_AUX2);
		FUNC1(sc, MII_BMTPHY_AUX2, data | 0x0020);

		/* Enable clocks across APD for Auto-MDIX functionality. */
		data = FUNC0(sc, MII_BMTPHY_INTR);
		FUNC1(sc, MII_BMTPHY_INTR, data | 0x0004);

		/* Disable shadow register mode. */
		data = FUNC0(sc, 0x1f);
		FUNC1(sc, 0x1f, data & ~0x0080);
	}
}