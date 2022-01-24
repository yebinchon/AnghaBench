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
struct ale_softc {int ale_flags; int /*<<< orphan*/  ale_dev; struct ifnet* ale_ifp; } ;

/* Variables and functions */
 int ALE_FLAG_FASTETHER ; 
 int /*<<< orphan*/  ALE_GPHY_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct ale_softc*) ; 
 int /*<<< orphan*/  ALE_MAC_CFG ; 
 int /*<<< orphan*/  ALE_PCIE_PHYMISC ; 
 int /*<<< orphan*/  ALE_WOL_CFG ; 
 int FUNC1 (struct ale_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ale_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ale_softc*,int /*<<< orphan*/ ,int) ; 
 int GPHY_CTRL_EXT_RESET ; 
 int GPHY_CTRL_HIB_EN ; 
 int GPHY_CTRL_HIB_PULSE ; 
 int GPHY_CTRL_PCLK_SEL_DIS ; 
 int GPHY_CTRL_PHY_IDDQ ; 
 int GPHY_CTRL_PHY_PLL_ON ; 
 int GPHY_CTRL_PWDOWN_HW ; 
 int GPHY_CTRL_SEL_ANA_RESET ; 
 int IFCAP_WOL ; 
 int IFCAP_WOL_MAGIC ; 
 int IFCAP_WOL_MCAST ; 
 int MAC_CFG_ALLMULTI ; 
 int MAC_CFG_BCAST ; 
 int MAC_CFG_DBG ; 
 int MAC_CFG_PROMISC ; 
 int MAC_CFG_RX_ENB ; 
 int PCIE_PHYMISC_FORCE_RCV_DET ; 
 int PCIM_PSTAT_PME ; 
 int PCIM_PSTAT_PMEENABLE ; 
 scalar_t__ PCIR_POWER_STATUS ; 
 int /*<<< orphan*/  PCIY_PMG ; 
 int WOL_CFG_MAGIC ; 
 int WOL_CFG_MAGIC_ENB ; 
 int /*<<< orphan*/  FUNC4 (struct ale_softc*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 

__attribute__((used)) static void
FUNC8(struct ale_softc *sc)
{
	struct ifnet *ifp;
	uint32_t reg, pmcs;
	uint16_t pmstat;
	int pmc;

	FUNC0(sc);

	if (FUNC5(sc->ale_dev, PCIY_PMG, &pmc) != 0) {
		/* Disable WOL. */
		FUNC3(sc, ALE_WOL_CFG, 0);
		reg = FUNC1(sc, ALE_PCIE_PHYMISC);
		reg |= PCIE_PHYMISC_FORCE_RCV_DET;
		FUNC3(sc, ALE_PCIE_PHYMISC, reg);
		/* Force PHY power down. */
		FUNC2(sc, ALE_GPHY_CTRL,
		    GPHY_CTRL_EXT_RESET | GPHY_CTRL_HIB_EN |
		    GPHY_CTRL_HIB_PULSE | GPHY_CTRL_PHY_PLL_ON |
		    GPHY_CTRL_SEL_ANA_RESET | GPHY_CTRL_PHY_IDDQ |
		    GPHY_CTRL_PCLK_SEL_DIS | GPHY_CTRL_PWDOWN_HW);
		return;
	}

	ifp = sc->ale_ifp;
	if ((ifp->if_capenable & IFCAP_WOL) != 0) {
		if ((sc->ale_flags & ALE_FLAG_FASTETHER) == 0)
			FUNC4(sc);
	}

	pmcs = 0;
	if ((ifp->if_capenable & IFCAP_WOL_MAGIC) != 0)
		pmcs |= WOL_CFG_MAGIC | WOL_CFG_MAGIC_ENB;
	FUNC3(sc, ALE_WOL_CFG, pmcs);
	reg = FUNC1(sc, ALE_MAC_CFG);
	reg &= ~(MAC_CFG_DBG | MAC_CFG_PROMISC | MAC_CFG_ALLMULTI |
	    MAC_CFG_BCAST);
	if ((ifp->if_capenable & IFCAP_WOL_MCAST) != 0)
		reg |= MAC_CFG_ALLMULTI | MAC_CFG_BCAST;
	if ((ifp->if_capenable & IFCAP_WOL) != 0)
		reg |= MAC_CFG_RX_ENB;
	FUNC3(sc, ALE_MAC_CFG, reg);

	if ((ifp->if_capenable & IFCAP_WOL) == 0) {
		/* WOL disabled, PHY power down. */
		reg = FUNC1(sc, ALE_PCIE_PHYMISC);
		reg |= PCIE_PHYMISC_FORCE_RCV_DET;
		FUNC3(sc, ALE_PCIE_PHYMISC, reg);
		FUNC2(sc, ALE_GPHY_CTRL,
		    GPHY_CTRL_EXT_RESET | GPHY_CTRL_HIB_EN |
		    GPHY_CTRL_HIB_PULSE | GPHY_CTRL_SEL_ANA_RESET |
		    GPHY_CTRL_PHY_IDDQ | GPHY_CTRL_PCLK_SEL_DIS |
		    GPHY_CTRL_PWDOWN_HW);
	}
	/* Request PME. */
	pmstat = FUNC6(sc->ale_dev, pmc + PCIR_POWER_STATUS, 2);
	pmstat &= ~(PCIM_PSTAT_PME | PCIM_PSTAT_PMEENABLE);
	if ((ifp->if_capenable & IFCAP_WOL) != 0)
		pmstat |= PCIM_PSTAT_PME | PCIM_PSTAT_PMEENABLE;
	FUNC7(sc->ale_dev, pmc + PCIR_POWER_STATUS, pmstat, 2);
}