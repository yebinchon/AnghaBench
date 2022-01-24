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
struct mii_softc {int mii_flags; } ;

/* Variables and functions */
 int IP1000PHY_BMCR_AUTOEN ; 
 int IP1000PHY_BMCR_FDX ; 
 int /*<<< orphan*/  IP1000PHY_MII_BMCR ; 
 int MIIF_PHYPRIV0 ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int FUNC0 (struct mii_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mii_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mii_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mii_softc*) ; 

__attribute__((used)) static void
FUNC4(struct mii_softc *sc)
{
	uint32_t reg;

	FUNC3(sc);

	/* clear autoneg/full-duplex as we don't want it after reset */
	reg = FUNC0(sc, IP1000PHY_MII_BMCR);
	reg &= ~(IP1000PHY_BMCR_AUTOEN | IP1000PHY_BMCR_FDX);
	FUNC1(sc, MII_BMCR, reg);

	if ((sc->mii_flags & MIIF_PHYPRIV0) != 0)
		FUNC2(sc);
}