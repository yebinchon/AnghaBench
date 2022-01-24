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
struct tsec_softc {struct ifnet* tsec_ifp; } ;
struct ifnet {int if_capenable; scalar_t__ if_hwassist; } ;

/* Variables and functions */
 int IFCAP_RXCSUM ; 
 int IFCAP_TXCSUM ; 
 scalar_t__ TSEC_CHECKSUM_FEATURES ; 
 int /*<<< orphan*/  FUNC0 (struct tsec_softc*) ; 
 int TSEC_RCTRL_IPCSEN ; 
 int TSEC_RCTRL_PRSDEP ; 
 int TSEC_RCTRL_PRSDEP_PARSE_L2 ; 
 int TSEC_RCTRL_PRSDEP_PARSE_L234 ; 
 int TSEC_RCTRL_TUCSEN ; 
 int TSEC_RCTRL_VLEX ; 
 int FUNC1 (struct tsec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TSEC_REG_RCTRL ; 
 int /*<<< orphan*/  TSEC_REG_TCTRL ; 
 int TSEC_TCTRL_IPCSEN ; 
 int TSEC_TCTRL_TUCSEN ; 
 int /*<<< orphan*/  FUNC2 (struct tsec_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct tsec_softc *sc)
{
	struct ifnet *ifp = sc->tsec_ifp;
	uint32_t reg;

	FUNC0(sc);

	reg = FUNC1(sc, TSEC_REG_TCTRL);
	reg |= TSEC_TCTRL_IPCSEN | TSEC_TCTRL_TUCSEN;

	if (ifp->if_capenable & IFCAP_TXCSUM)
		ifp->if_hwassist = TSEC_CHECKSUM_FEATURES;
	else
		ifp->if_hwassist = 0;

	FUNC2(sc, TSEC_REG_TCTRL, reg);

	reg = FUNC1(sc, TSEC_REG_RCTRL);
	reg &= ~(TSEC_RCTRL_IPCSEN | TSEC_RCTRL_TUCSEN | TSEC_RCTRL_PRSDEP);
	reg |= TSEC_RCTRL_PRSDEP_PARSE_L2 | TSEC_RCTRL_VLEX;

	if (ifp->if_capenable & IFCAP_RXCSUM)
		reg |= TSEC_RCTRL_IPCSEN | TSEC_RCTRL_TUCSEN |
		    TSEC_RCTRL_PRSDEP_PARSE_L234;

	FUNC2(sc, TSEC_REG_RCTRL, reg);
}