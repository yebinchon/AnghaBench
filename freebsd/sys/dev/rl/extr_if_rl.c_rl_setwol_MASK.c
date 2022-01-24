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
struct rl_softc {int /*<<< orphan*/  rl_dev; int /*<<< orphan*/  rl_cfg5; int /*<<< orphan*/  rl_cfg3; int /*<<< orphan*/  rl_cfg1; struct ifnet* rl_ifp; } ;
struct ifnet {int if_capabilities; int if_capenable; } ;

/* Variables and functions */
 int FUNC0 (struct rl_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rl_softc*,int /*<<< orphan*/ ,int) ; 
 int IFCAP_WOL ; 
 int IFCAP_WOL_MAGIC ; 
 int IFCAP_WOL_MCAST ; 
 int IFCAP_WOL_UCAST ; 
 int PCIM_PSTAT_PME ; 
 int PCIM_PSTAT_PMEENABLE ; 
 scalar_t__ PCIR_POWER_STATUS ; 
 int /*<<< orphan*/  PCIY_PMG ; 
 int RL_CFG1_PME ; 
 int RL_CFG3_WOL_LINK ; 
 int RL_CFG3_WOL_MAGIC ; 
 int RL_CFG5_WOL_BCAST ; 
 int RL_CFG5_WOL_LANWAKE ; 
 int RL_CFG5_WOL_MCAST ; 
 int RL_CFG5_WOL_UCAST ; 
 int /*<<< orphan*/  RL_EECMD ; 
 int RL_EEMODE_OFF ; 
 int RL_EE_MODE ; 
 int /*<<< orphan*/  FUNC2 (struct rl_softc*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 

__attribute__((used)) static void
FUNC6(struct rl_softc *sc)
{
	struct ifnet		*ifp;
	int			pmc;
	uint16_t		pmstat;
	uint8_t			v;

	FUNC2(sc);

	ifp = sc->rl_ifp;
	if ((ifp->if_capabilities & IFCAP_WOL) == 0)
		return;
	if (FUNC3(sc->rl_dev, PCIY_PMG, &pmc) != 0)
		return;

	/* Enable config register write. */
	FUNC1(sc, RL_EECMD, RL_EE_MODE);

	/* Enable PME. */
	v = FUNC0(sc, sc->rl_cfg1);
	v &= ~RL_CFG1_PME;
	if ((ifp->if_capenable & IFCAP_WOL) != 0)
		v |= RL_CFG1_PME;
	FUNC1(sc, sc->rl_cfg1, v);

	v = FUNC0(sc, sc->rl_cfg3);
	v &= ~(RL_CFG3_WOL_LINK | RL_CFG3_WOL_MAGIC);
	if ((ifp->if_capenable & IFCAP_WOL_MAGIC) != 0)
		v |= RL_CFG3_WOL_MAGIC;
	FUNC1(sc, sc->rl_cfg3, v);

	v = FUNC0(sc, sc->rl_cfg5);
	v &= ~(RL_CFG5_WOL_BCAST | RL_CFG5_WOL_MCAST | RL_CFG5_WOL_UCAST);
	v &= ~RL_CFG5_WOL_LANWAKE;
	if ((ifp->if_capenable & IFCAP_WOL_UCAST) != 0)
		v |= RL_CFG5_WOL_UCAST;
	if ((ifp->if_capenable & IFCAP_WOL_MCAST) != 0)
		v |= RL_CFG5_WOL_MCAST | RL_CFG5_WOL_BCAST;
	if ((ifp->if_capenable & IFCAP_WOL) != 0)
		v |= RL_CFG5_WOL_LANWAKE;
	FUNC1(sc, sc->rl_cfg5, v);

	/* Config register write done. */
	FUNC1(sc, RL_EECMD, RL_EEMODE_OFF);

	/* Request PME if WOL is requested. */
	pmstat = FUNC4(sc->rl_dev, pmc + PCIR_POWER_STATUS, 2);
	pmstat &= ~(PCIM_PSTAT_PME | PCIM_PSTAT_PMEENABLE);
	if ((ifp->if_capenable & IFCAP_WOL) != 0)
		pmstat |= PCIM_PSTAT_PME | PCIM_PSTAT_PMEENABLE;
	FUNC5(sc->rl_dev, pmc + PCIR_POWER_STATUS, pmstat, 2);
}