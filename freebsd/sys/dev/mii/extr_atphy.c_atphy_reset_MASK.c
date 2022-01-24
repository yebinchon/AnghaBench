#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct mii_softc {TYPE_2__* mii_pdata; } ;
struct ifmedia_entry {int /*<<< orphan*/  ifm_media; } ;
struct TYPE_3__ {struct ifmedia_entry* ifm_cur; } ;
struct TYPE_4__ {TYPE_1__ mii_media; } ;

/* Variables and functions */
 int ATPHY_SCR ; 
 int ATPHY_SCR_ASSERT_CRS_ON_TX ; 
 int ATPHY_SCR_AUTO_X_MODE ; 
 int ATPHY_SCR_MAC_PDOWN ; 
 int ATPHY_SCR_POLARITY_REVERSAL ; 
 int BMCR_RESET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IFM_AUTO ; 
 int MII_BMCR ; 
 int FUNC1 (struct mii_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mii_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mii_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct mii_softc *sc)
{
	struct ifmedia_entry *ife = sc->mii_pdata->mii_media.ifm_cur;
	uint32_t reg;
	int i;

	/* Take PHY out of power down mode. */
	FUNC2(sc, 29, 0x29);
	FUNC2(sc, 30, 0);

	reg = FUNC1(sc, ATPHY_SCR);
	/* Enable automatic crossover. */
	reg |= ATPHY_SCR_AUTO_X_MODE;
	/* Disable power down. */
	reg &= ~ATPHY_SCR_MAC_PDOWN;
	/* Enable CRS on Tx. */
	reg |= ATPHY_SCR_ASSERT_CRS_ON_TX;
	/* Auto correction for reversed cable polarity. */
	reg |= ATPHY_SCR_POLARITY_REVERSAL;
	FUNC2(sc, ATPHY_SCR, reg);

	/* Workaround F1 bug to reset phy. */
	FUNC3(sc, ife == NULL ? IFM_AUTO : ife->ifm_media);

	for (i = 0; i < 1000; i++) {
		FUNC0(1);
		if ((FUNC1(sc, MII_BMCR) & BMCR_RESET) == 0)
			break;
	}
}