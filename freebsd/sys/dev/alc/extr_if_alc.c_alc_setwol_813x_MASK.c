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
 int /*<<< orphan*/  FUNC0 (struct alc_softc*) ; 
 int /*<<< orphan*/  ALC_MAC_CFG ; 
 int /*<<< orphan*/  ALC_MASTER_CFG ; 
 int /*<<< orphan*/  ALC_PCIE_PHYMISC ; 
 int /*<<< orphan*/  ALC_WOL_CFG ; 
 int FUNC1 (struct alc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct alc_softc*,int /*<<< orphan*/ ,int) ; 
 int IFCAP_WOL ; 
 int IFCAP_WOL_MAGIC ; 
 int IFCAP_WOL_MCAST ; 
 int MAC_CFG_ALLMULTI ; 
 int MAC_CFG_BCAST ; 
 int MAC_CFG_DBG ; 
 int MAC_CFG_PROMISC ; 
 int MAC_CFG_RX_ENB ; 
 int MASTER_CLK_SEL_DIS ; 
 int PCIE_PHYMISC_FORCE_RCV_DET ; 
 int PCIM_PSTAT_PME ; 
 int PCIM_PSTAT_PMEENABLE ; 
 scalar_t__ PCIR_POWER_STATUS ; 
 int WOL_CFG_MAGIC ; 
 int WOL_CFG_MAGIC_ENB ; 
 int /*<<< orphan*/  FUNC3 (struct alc_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct alc_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct alc_softc*) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 

__attribute__((used)) static void
FUNC8(struct alc_softc *sc)
{
	struct ifnet *ifp;
	uint32_t reg, pmcs;
	uint16_t pmstat;

	FUNC0(sc);

	FUNC3(sc);
	ifp = sc->alc_ifp;
	if ((sc->alc_flags & ALC_FLAG_PM) == 0) {
		/* Disable WOL. */
		FUNC2(sc, ALC_WOL_CFG, 0);
		reg = FUNC1(sc, ALC_PCIE_PHYMISC);
		reg |= PCIE_PHYMISC_FORCE_RCV_DET;
		FUNC2(sc, ALC_PCIE_PHYMISC, reg);
		/* Force PHY power down. */
		FUNC4(sc);
		FUNC2(sc, ALC_MASTER_CFG,
		    FUNC1(sc, ALC_MASTER_CFG) | MASTER_CLK_SEL_DIS);
		return;
	}

	if ((ifp->if_capenable & IFCAP_WOL) != 0) {
		if ((sc->alc_flags & ALC_FLAG_FASTETHER) == 0)
			FUNC5(sc);
		FUNC2(sc, ALC_MASTER_CFG,
		    FUNC1(sc, ALC_MASTER_CFG) & ~MASTER_CLK_SEL_DIS);
	}

	pmcs = 0;
	if ((ifp->if_capenable & IFCAP_WOL_MAGIC) != 0)
		pmcs |= WOL_CFG_MAGIC | WOL_CFG_MAGIC_ENB;
	FUNC2(sc, ALC_WOL_CFG, pmcs);
	reg = FUNC1(sc, ALC_MAC_CFG);
	reg &= ~(MAC_CFG_DBG | MAC_CFG_PROMISC | MAC_CFG_ALLMULTI |
	    MAC_CFG_BCAST);
	if ((ifp->if_capenable & IFCAP_WOL_MCAST) != 0)
		reg |= MAC_CFG_ALLMULTI | MAC_CFG_BCAST;
	if ((ifp->if_capenable & IFCAP_WOL) != 0)
		reg |= MAC_CFG_RX_ENB;
	FUNC2(sc, ALC_MAC_CFG, reg);

	reg = FUNC1(sc, ALC_PCIE_PHYMISC);
	reg |= PCIE_PHYMISC_FORCE_RCV_DET;
	FUNC2(sc, ALC_PCIE_PHYMISC, reg);
	if ((ifp->if_capenable & IFCAP_WOL) == 0) {
		/* WOL disabled, PHY power down. */
		FUNC4(sc);
		FUNC2(sc, ALC_MASTER_CFG,
		    FUNC1(sc, ALC_MASTER_CFG) | MASTER_CLK_SEL_DIS);
	}
	/* Request PME. */
	pmstat = FUNC6(sc->alc_dev,
	    sc->alc_pmcap + PCIR_POWER_STATUS, 2);
	pmstat &= ~(PCIM_PSTAT_PME | PCIM_PSTAT_PMEENABLE);
	if ((ifp->if_capenable & IFCAP_WOL) != 0)
		pmstat |= PCIM_PSTAT_PME | PCIM_PSTAT_PMEENABLE;
	FUNC7(sc->alc_dev,
	    sc->alc_pmcap + PCIR_POWER_STATUS, pmstat, 2);
}