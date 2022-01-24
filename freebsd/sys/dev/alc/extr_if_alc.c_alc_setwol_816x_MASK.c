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
typedef  int uint16_t ;
struct ifnet {int if_capenable; } ;
struct alc_softc {int alc_flags; scalar_t__ alc_pmcap; int /*<<< orphan*/  alc_dev; struct ifnet* alc_ifp; } ;

/* Variables and functions */
 int ALC_FLAG_FASTETHER ; 
 int ALC_FLAG_PM ; 
 int /*<<< orphan*/  ALC_GPHY_CFG ; 
 int /*<<< orphan*/  FUNC0 (struct alc_softc*) ; 
 int /*<<< orphan*/  ALC_MAC_CFG ; 
 int /*<<< orphan*/  ALC_MASTER_CFG ; 
 int /*<<< orphan*/  ALC_MISC ; 
 int /*<<< orphan*/  ALC_PDLL_TRNS1 ; 
 int /*<<< orphan*/  ALC_WOL_CFG ; 
 int /*<<< orphan*/  ANEG_S3DIG10_SL ; 
 int FUNC1 (struct alc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct alc_softc*,int /*<<< orphan*/ ,int) ; 
 int GPHY_CFG_100AB_ENB ; 
 int GPHY_CFG_EXT_RESET ; 
 int GPHY_CFG_HIB_EN ; 
 int GPHY_CFG_HIB_PULSE ; 
 int GPHY_CFG_LED_MODE ; 
 int GPHY_CFG_PHY_IDDQ ; 
 int GPHY_CFG_PHY_PLL_ON ; 
 int GPHY_CFG_PWDOWN_HW ; 
 int GPHY_CFG_SEL_ANA_RESET ; 
 int IFCAP_WOL ; 
 int IFCAP_WOL_MAGIC ; 
 int IFCAP_WOL_MCAST ; 
 int MAC_CFG_ALLMULTI ; 
 int MAC_CFG_BCAST ; 
 int MAC_CFG_DBG ; 
 int MAC_CFG_PROMISC ; 
 int MAC_CFG_RX_ENB ; 
 int MASTER_CLK_SEL_DIS ; 
 int /*<<< orphan*/  MII_EXT_ANEG ; 
 int /*<<< orphan*/  MII_EXT_ANEG_S3DIG10 ; 
 int MISC_INTNLOSC_OPEN ; 
 int PCIM_PSTAT_PME ; 
 int PCIM_PSTAT_PMEENABLE ; 
 scalar_t__ PCIR_POWER_STATUS ; 
 int PDLL_TRNS1_D3PLLOFF_ENB ; 
 int WOL_CFG_MAGIC ; 
 int WOL_CFG_MAGIC_ENB ; 
 int /*<<< orphan*/  FUNC3 (struct alc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct alc_softc*) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 

__attribute__((used)) static void
FUNC7(struct alc_softc *sc)
{
	struct ifnet *ifp;
	uint32_t gphy, mac, master, pmcs, reg;
	uint16_t pmstat;

	FUNC0(sc);

	ifp = sc->alc_ifp;
	master = FUNC1(sc, ALC_MASTER_CFG);
	master &= ~MASTER_CLK_SEL_DIS;
	gphy = FUNC1(sc, ALC_GPHY_CFG);
	gphy &= ~(GPHY_CFG_EXT_RESET | GPHY_CFG_LED_MODE | GPHY_CFG_100AB_ENB |
	    GPHY_CFG_PHY_PLL_ON);
	gphy |= GPHY_CFG_HIB_EN | GPHY_CFG_HIB_PULSE | GPHY_CFG_SEL_ANA_RESET;
	if ((sc->alc_flags & ALC_FLAG_PM) == 0) {
		FUNC2(sc, ALC_WOL_CFG, 0);
		gphy |= GPHY_CFG_PHY_IDDQ | GPHY_CFG_PWDOWN_HW;
		mac = FUNC1(sc, ALC_MAC_CFG);
	} else {
		if ((ifp->if_capenable & IFCAP_WOL) != 0) {
			gphy |= GPHY_CFG_EXT_RESET;
			if ((sc->alc_flags & ALC_FLAG_FASTETHER) == 0)
				FUNC4(sc);
		}
		pmcs = 0;
		if ((ifp->if_capenable & IFCAP_WOL_MAGIC) != 0)
			pmcs |= WOL_CFG_MAGIC | WOL_CFG_MAGIC_ENB;
		FUNC2(sc, ALC_WOL_CFG, pmcs);
		mac = FUNC1(sc, ALC_MAC_CFG);
		mac &= ~(MAC_CFG_DBG | MAC_CFG_PROMISC | MAC_CFG_ALLMULTI |
		    MAC_CFG_BCAST);
		if ((ifp->if_capenable & IFCAP_WOL_MCAST) != 0)
			mac |= MAC_CFG_ALLMULTI | MAC_CFG_BCAST;
		if ((ifp->if_capenable & IFCAP_WOL) != 0)
			mac |= MAC_CFG_RX_ENB;
		FUNC3(sc, MII_EXT_ANEG, MII_EXT_ANEG_S3DIG10,
		    ANEG_S3DIG10_SL);
	}

	/* Enable OSC. */
	reg = FUNC1(sc, ALC_MISC);
	reg &= ~MISC_INTNLOSC_OPEN;
	FUNC2(sc, ALC_MISC, reg);
	reg |= MISC_INTNLOSC_OPEN;
	FUNC2(sc, ALC_MISC, reg);
	FUNC2(sc, ALC_MASTER_CFG, master);
	FUNC2(sc, ALC_MAC_CFG, mac);
	FUNC2(sc, ALC_GPHY_CFG, gphy);
	reg = FUNC1(sc, ALC_PDLL_TRNS1);
	reg |= PDLL_TRNS1_D3PLLOFF_ENB;
	FUNC2(sc, ALC_PDLL_TRNS1, reg);

	if ((sc->alc_flags & ALC_FLAG_PM) != 0) {
		/* Request PME. */
		pmstat = FUNC5(sc->alc_dev,
		    sc->alc_pmcap + PCIR_POWER_STATUS, 2);
		pmstat &= ~(PCIM_PSTAT_PME | PCIM_PSTAT_PMEENABLE);
		if ((ifp->if_capenable & IFCAP_WOL) != 0)
			pmstat |= PCIM_PSTAT_PME | PCIM_PSTAT_PMEENABLE;
		FUNC6(sc->alc_dev,
		    sc->alc_pmcap + PCIR_POWER_STATUS, pmstat, 2);
	}
}