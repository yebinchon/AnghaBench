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
struct rl_softc {int rl_flags; int /*<<< orphan*/  rl_dev; int /*<<< orphan*/  rl_cfg5; int /*<<< orphan*/  rl_cfg3; int /*<<< orphan*/  rl_cfg1; struct ifnet* rl_ifp; } ;
struct ifnet {int if_capenable; } ;

/* Variables and functions */
 int FUNC0 (struct rl_softc*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rl_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rl_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rl_softc*,int /*<<< orphan*/ ,int) ; 
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
 int RL_CMD_RX_ENB ; 
 int /*<<< orphan*/  RL_COMMAND ; 
 int /*<<< orphan*/  RL_EECMD ; 
 int RL_EEMODE_OFF ; 
 int RL_EE_MODE ; 
 int RL_FLAG_8168G_PLUS ; 
 int RL_FLAG_MACSLEEP ; 
 int RL_FLAG_PHYWAKE_PM ; 
 int RL_FLAG_WOLRXENB ; 
 int RL_FLAG_WOL_MANLINK ; 
 int /*<<< orphan*/  RL_GPIO ; 
 int /*<<< orphan*/  FUNC4 (struct rl_softc*) ; 
 int /*<<< orphan*/  RL_MACDBG ; 
 int /*<<< orphan*/  RL_MISC ; 
 int /*<<< orphan*/  RL_PMCH ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rl_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct rl_softc*) ; 

__attribute__((used)) static void
FUNC10(struct rl_softc *sc)
{
	struct ifnet		*ifp;
	int			pmc;
	uint16_t		pmstat;
	uint8_t			v;

	FUNC4(sc);

	if (FUNC5(sc->rl_dev, PCIY_PMG, &pmc) != 0)
		return;

	ifp = sc->rl_ifp;
	/* Put controller into sleep mode. */
	if ((sc->rl_flags & RL_FLAG_MACSLEEP) != 0) {
		if ((FUNC0(sc, RL_MACDBG) & 0x80) == 0x80)
			FUNC2(sc, RL_GPIO,
			    FUNC0(sc, RL_GPIO) & ~0x01);
	}
	if ((ifp->if_capenable & IFCAP_WOL) != 0) {
		if ((sc->rl_flags & RL_FLAG_8168G_PLUS) != 0) {
			/* Disable RXDV gate. */
			FUNC3(sc, RL_MISC, FUNC1(sc, RL_MISC) &
			    ~0x00080000);
		}
		FUNC9(sc);
		if ((sc->rl_flags & RL_FLAG_WOL_MANLINK) != 0)
			FUNC8(sc);
		if ((sc->rl_flags & RL_FLAG_WOLRXENB) != 0)
			FUNC2(sc, RL_COMMAND, RL_CMD_RX_ENB);
	}
	/* Enable config register write. */
	FUNC2(sc, RL_EECMD, RL_EE_MODE);

	/* Enable PME. */
	v = FUNC0(sc, sc->rl_cfg1);
	v &= ~RL_CFG1_PME;
	if ((ifp->if_capenable & IFCAP_WOL) != 0)
		v |= RL_CFG1_PME;
	FUNC2(sc, sc->rl_cfg1, v);

	v = FUNC0(sc, sc->rl_cfg3);
	v &= ~(RL_CFG3_WOL_LINK | RL_CFG3_WOL_MAGIC);
	if ((ifp->if_capenable & IFCAP_WOL_MAGIC) != 0)
		v |= RL_CFG3_WOL_MAGIC;
	FUNC2(sc, sc->rl_cfg3, v);

	v = FUNC0(sc, sc->rl_cfg5);
	v &= ~(RL_CFG5_WOL_BCAST | RL_CFG5_WOL_MCAST | RL_CFG5_WOL_UCAST |
	    RL_CFG5_WOL_LANWAKE);
	if ((ifp->if_capenable & IFCAP_WOL_UCAST) != 0)
		v |= RL_CFG5_WOL_UCAST;
	if ((ifp->if_capenable & IFCAP_WOL_MCAST) != 0)
		v |= RL_CFG5_WOL_MCAST | RL_CFG5_WOL_BCAST;
	if ((ifp->if_capenable & IFCAP_WOL) != 0)
		v |= RL_CFG5_WOL_LANWAKE;
	FUNC2(sc, sc->rl_cfg5, v);

	/* Config register write done. */
	FUNC2(sc, RL_EECMD, RL_EEMODE_OFF);

	if ((ifp->if_capenable & IFCAP_WOL) == 0 &&
	    (sc->rl_flags & RL_FLAG_PHYWAKE_PM) != 0)
		FUNC2(sc, RL_PMCH, FUNC0(sc, RL_PMCH) & ~0x80);
	/*
	 * It seems that hardware resets its link speed to 100Mbps in
	 * power down mode so switching to 100Mbps in driver is not
	 * needed.
	 */

	/* Request PME if WOL is requested. */
	pmstat = FUNC6(sc->rl_dev, pmc + PCIR_POWER_STATUS, 2);
	pmstat &= ~(PCIM_PSTAT_PME | PCIM_PSTAT_PMEENABLE);
	if ((ifp->if_capenable & IFCAP_WOL) != 0)
		pmstat |= PCIM_PSTAT_PME | PCIM_PSTAT_PMEENABLE;
	FUNC7(sc->rl_dev, pmc + PCIR_POWER_STATUS, pmstat, 2);
}