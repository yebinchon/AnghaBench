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
typedef  int uint8_t ;
typedef  int uint16_t ;
struct vge_softc {int vge_flags; scalar_t__ vge_pmcap; int /*<<< orphan*/  vge_dev; struct ifnet* vge_ifp; int /*<<< orphan*/  vge_phyaddr; } ;
struct ifnet {int if_capenable; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMCR_PDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct vge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vge_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vge_softc*,int /*<<< orphan*/ ,int) ; 
 int IFCAP_WOL ; 
 int IFCAP_WOL_MAGIC ; 
 int IFCAP_WOL_MCAST ; 
 int IFCAP_WOL_UCAST ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int PCIM_PSTAT_PME ; 
 int PCIM_PSTAT_PMEENABLE ; 
 scalar_t__ PCIR_POWER_STATUS ; 
 int /*<<< orphan*/  VGE_DIAGCTL ; 
 int VGE_DIAGCTL_FDXFORCE ; 
 int /*<<< orphan*/  VGE_DIAGCTL_GMII ; 
 int VGE_DIAGCTL_MACFORCE ; 
 int VGE_FLAG_PMCAP ; 
 int /*<<< orphan*/  FUNC4 (struct vge_softc*) ; 
 int /*<<< orphan*/  VGE_PWRSTAT ; 
 int VGE_STICKHW_DS0 ; 
 int VGE_STICKHW_DS1 ; 
 int VGE_STICKHW_SWPTAG ; 
 int /*<<< orphan*/  VGE_WOLCFGC ; 
 int /*<<< orphan*/  VGE_WOLCFGS ; 
 int VGE_WOLCFG_PMEOVR ; 
 int VGE_WOLCFG_SAB ; 
 int VGE_WOLCFG_SAM ; 
 int /*<<< orphan*/  VGE_WOLCR0C ; 
 int VGE_WOLCR0_PATTERN_ALL ; 
 int /*<<< orphan*/  VGE_WOLCR1C ; 
 int /*<<< orphan*/  VGE_WOLCR1S ; 
 int VGE_WOLCR1_MAGIC ; 
 int VGE_WOLCR1_UCAST ; 
 int /*<<< orphan*/  VGE_WOLSR0C ; 
 int /*<<< orphan*/  VGE_WOLSR1C ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct vge_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct vge_softc*) ; 

__attribute__((used)) static void
FUNC10(struct vge_softc *sc)
{
	struct ifnet *ifp;
	uint16_t pmstat;
	uint8_t val;

	FUNC4(sc);

	if ((sc->vge_flags & VGE_FLAG_PMCAP) == 0) {
		/* No PME capability, PHY power down. */
		FUNC7(sc->vge_dev, sc->vge_phyaddr, MII_BMCR,
		    BMCR_PDOWN);
		FUNC8(sc);
		return;
	}

	ifp = sc->vge_ifp;

	/* Clear WOL on pattern match. */
	FUNC3(sc, VGE_WOLCR0C, VGE_WOLCR0_PATTERN_ALL);
	/* Disable WOL on magic/unicast packet. */
	FUNC3(sc, VGE_WOLCR1C, 0x0F);
	FUNC3(sc, VGE_WOLCFGC, VGE_WOLCFG_SAB | VGE_WOLCFG_SAM |
	    VGE_WOLCFG_PMEOVR);
	if ((ifp->if_capenable & IFCAP_WOL) != 0) {
		FUNC9(sc);
		val = 0;
		if ((ifp->if_capenable & IFCAP_WOL_UCAST) != 0)
			val |= VGE_WOLCR1_UCAST;
		if ((ifp->if_capenable & IFCAP_WOL_MAGIC) != 0)
			val |= VGE_WOLCR1_MAGIC;
		FUNC3(sc, VGE_WOLCR1S, val);
		val = 0;
		if ((ifp->if_capenable & IFCAP_WOL_MCAST) != 0)
			val |= VGE_WOLCFG_SAM | VGE_WOLCFG_SAB;
		FUNC3(sc, VGE_WOLCFGS, val | VGE_WOLCFG_PMEOVR);
		/* Disable MII auto-polling. */
		FUNC8(sc);
	}
	FUNC2(sc, VGE_DIAGCTL,
	    VGE_DIAGCTL_MACFORCE | VGE_DIAGCTL_FDXFORCE);
	FUNC0(sc, VGE_DIAGCTL, VGE_DIAGCTL_GMII);

	/* Clear WOL status on pattern match. */
	FUNC3(sc, VGE_WOLSR0C, 0xFF);
	FUNC3(sc, VGE_WOLSR1C, 0xFF);

	val = FUNC1(sc, VGE_PWRSTAT);
	val |= VGE_STICKHW_SWPTAG;
	FUNC3(sc, VGE_PWRSTAT, val);
	/* Put hardware into sleep. */
	val = FUNC1(sc, VGE_PWRSTAT);
	val |= VGE_STICKHW_DS0 | VGE_STICKHW_DS1;
	FUNC3(sc, VGE_PWRSTAT, val);
	/* Request PME if WOL is requested. */
	pmstat = FUNC5(sc->vge_dev, sc->vge_pmcap +
	    PCIR_POWER_STATUS, 2);
	pmstat &= ~(PCIM_PSTAT_PME | PCIM_PSTAT_PMEENABLE);
	if ((ifp->if_capenable & IFCAP_WOL) != 0)
		pmstat |= PCIM_PSTAT_PME | PCIM_PSTAT_PMEENABLE;
	FUNC6(sc->vge_dev, sc->vge_pmcap + PCIR_POWER_STATUS,
	    pmstat, 2);
}