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
struct rl_softc {int /*<<< orphan*/  rl_cfg5; int /*<<< orphan*/  rl_cfg3; struct ifnet* rl_ifp; } ;
struct ifnet {int if_capabilities; } ;

/* Variables and functions */
 int FUNC0 (struct rl_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rl_softc*,int /*<<< orphan*/ ,int) ; 
 int IFCAP_WOL ; 
 int RL_CFG3_WOL_LINK ; 
 int RL_CFG3_WOL_MAGIC ; 
 int RL_CFG5_WOL_BCAST ; 
 int RL_CFG5_WOL_LANWAKE ; 
 int RL_CFG5_WOL_MCAST ; 
 int RL_CFG5_WOL_UCAST ; 
 int /*<<< orphan*/  RL_EECMD ; 
 int RL_EEMODE_OFF ; 
 int RL_EE_MODE ; 

__attribute__((used)) static void
FUNC2(struct rl_softc *sc)
{
	struct ifnet		*ifp;
	uint8_t			v;

	ifp = sc->rl_ifp;
	if ((ifp->if_capabilities & IFCAP_WOL) == 0)
		return;

	/* Enable config register write. */
	FUNC1(sc, RL_EECMD, RL_EE_MODE);

	v = FUNC0(sc, sc->rl_cfg3);
	v &= ~(RL_CFG3_WOL_LINK | RL_CFG3_WOL_MAGIC);
	FUNC1(sc, sc->rl_cfg3, v);

	/* Config register write done. */
	FUNC1(sc, RL_EECMD, RL_EEMODE_OFF);

	v = FUNC0(sc, sc->rl_cfg5);
	v &= ~(RL_CFG5_WOL_BCAST | RL_CFG5_WOL_MCAST | RL_CFG5_WOL_UCAST);
	v &= ~RL_CFG5_WOL_LANWAKE;
	FUNC1(sc, sc->rl_cfg5, v);
}