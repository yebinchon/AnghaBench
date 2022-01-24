#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int uint16_t ;
struct mii_data {int mii_media_status; int /*<<< orphan*/  mii_media_active; } ;
struct ifnet {int if_capenable; } ;
struct TYPE_7__ {int flags; int /*<<< orphan*/  dev; int /*<<< orphan*/  miibus; struct ifnet* ifp; } ;
typedef  TYPE_1__ ae_softc_t ;

/* Variables and functions */
 int AE_FLAG_PMG ; 
 int AE_HALFBUF_DEFAULT ; 
 int AE_HALFBUF_MASK ; 
 int AE_HALFBUF_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int AE_MAC_BCAST_EN ; 
 int AE_MAC_CLK_PHY ; 
 int AE_MAC_FULL_DUPLEX ; 
 int AE_MAC_MCAST_EN ; 
 int AE_MAC_PREAMBLE_DEFAULT ; 
 int AE_MAC_PREAMBLE_MASK ; 
 int AE_MAC_PREAMBLE_SHIFT ; 
 int /*<<< orphan*/  AE_MAC_REG ; 
 int AE_MAC_RX_EN ; 
 int AE_MAC_TX_AUTOPAD ; 
 int AE_MAC_TX_CRC_EN ; 
 int /*<<< orphan*/  AE_PCIE_DLL_TX_CTRL_REG ; 
 int AE_PCIE_DLL_TX_CTRL_SEL_NOR_CLK ; 
 int AE_PCIE_PHYMISC_FORCE_RCV_DET ; 
 int /*<<< orphan*/  AE_PCIE_PHYMISC_REG ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int AE_WOL_LNKCHG ; 
 int AE_WOL_LNKCHG_PME ; 
 int AE_WOL_MAGIC ; 
 int AE_WOL_MAGIC_PME ; 
 int /*<<< orphan*/  AE_WOL_REG ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int IFCAP_WOL ; 
 int IFM_ACTIVE ; 
 int IFM_AVALID ; 
 int IFM_FDX ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int PCIM_PSTAT_PME ; 
 int PCIM_PSTAT_PMEENABLE ; 
 scalar_t__ PCIR_POWER_STATUS ; 
 int /*<<< orphan*/  PCIY_PMG ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 struct mii_data* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mii_data*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC8 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 

__attribute__((used)) static void
FUNC10(ae_softc_t *sc)
{
	struct ifnet *ifp;
	uint32_t val;
	uint16_t pmstat;
	struct mii_data *mii;
	int pmc;

	FUNC0(sc);

	ifp = sc->ifp;
	if ((sc->flags & AE_FLAG_PMG) == 0) {
		/* Disable WOL entirely. */
		FUNC2(sc, AE_WOL_REG, 0);
		return;
	}

	/*
	 * Configure WOL if enabled.
	 */
	if ((ifp->if_capenable & IFCAP_WOL) != 0) {
		mii = FUNC5(sc->miibus);
		FUNC6(mii);
		if ((mii->mii_media_status & IFM_AVALID) != 0 &&
		    (mii->mii_media_status & IFM_ACTIVE) != 0) {
			FUNC2(sc, AE_WOL_REG, AE_WOL_MAGIC | \
			    AE_WOL_MAGIC_PME);

			/*
			 * Configure MAC.
			 */
			val = AE_MAC_RX_EN | AE_MAC_CLK_PHY | \
			    AE_MAC_TX_CRC_EN | AE_MAC_TX_AUTOPAD | \
			    ((AE_HALFBUF_DEFAULT << AE_HALFBUF_SHIFT) & \
			    AE_HALFBUF_MASK) | \
			    ((AE_MAC_PREAMBLE_DEFAULT << \
			    AE_MAC_PREAMBLE_SHIFT) & AE_MAC_PREAMBLE_MASK) | \
			    AE_MAC_BCAST_EN | AE_MAC_MCAST_EN;
			if ((FUNC3(mii->mii_media_active) & \
			    IFM_FDX) != 0)
				val |= AE_MAC_FULL_DUPLEX;
			FUNC2(sc, AE_MAC_REG, val);
			    
		} else {	/* No link. */
			FUNC2(sc, AE_WOL_REG, AE_WOL_LNKCHG | \
			    AE_WOL_LNKCHG_PME);
			FUNC2(sc, AE_MAC_REG, 0);
		}
	} else {
		FUNC4(sc);
	}

	/*
	 * PCIE hacks. Magic numbers.
	 */
	val = FUNC1(sc, AE_PCIE_PHYMISC_REG);
	val |= AE_PCIE_PHYMISC_FORCE_RCV_DET;
	FUNC2(sc, AE_PCIE_PHYMISC_REG, val);
	val = FUNC1(sc, AE_PCIE_DLL_TX_CTRL_REG);
	val |= AE_PCIE_DLL_TX_CTRL_SEL_NOR_CLK;
	FUNC2(sc, AE_PCIE_DLL_TX_CTRL_REG, val);

	/*
	 * Configure PME.
	 */
	if (FUNC7(sc->dev, PCIY_PMG, &pmc) == 0) {
		pmstat = FUNC8(sc->dev, pmc + PCIR_POWER_STATUS, 2);
		pmstat &= ~(PCIM_PSTAT_PME | PCIM_PSTAT_PMEENABLE);
		if ((ifp->if_capenable & IFCAP_WOL) != 0)
			pmstat |= PCIM_PSTAT_PME | PCIM_PSTAT_PMEENABLE;
		FUNC9(sc->dev, pmc + PCIR_POWER_STATUS, pmstat, 2);
	}
}