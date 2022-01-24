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
typedef  int uint16_t ;
struct vte_softc {int /*<<< orphan*/  vte_miibus; } ;
struct mii_data {int /*<<< orphan*/  mii_media_active; } ;

/* Variables and functions */
 int FUNC0 (struct vte_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vte_softc*,int /*<<< orphan*/ ,int) ; 
 int IFM_ETH_RXPAUSE ; 
 int IFM_ETH_TXPAUSE ; 
 int IFM_FDX ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int MCR0_FC_ENB ; 
 int MCR0_FULL_DUPLEX ; 
 int /*<<< orphan*/  FUNC3 (struct vte_softc*) ; 
 int /*<<< orphan*/  VTE_MCR0 ; 
 struct mii_data* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct vte_softc *sc)
{
	struct mii_data *mii;
	uint16_t mcr;

	FUNC3(sc);

	mii = FUNC4(sc->vte_miibus);
	mcr = FUNC0(sc, VTE_MCR0);
	mcr &= ~(MCR0_FC_ENB | MCR0_FULL_DUPLEX);
	if ((FUNC2(mii->mii_media_active) & IFM_FDX) != 0) {
		mcr |= MCR0_FULL_DUPLEX;
#ifdef notyet
		if ((IFM_OPTIONS(mii->mii_media_active) & IFM_ETH_TXPAUSE) != 0)
			mcr |= MCR0_FC_ENB;
		/*
		 * The data sheet is not clear whether the controller
		 * honors received pause frames or not.  The is no
		 * separate control bit for RX pause frame so just
		 * enable MCR0_FC_ENB bit.
		 */
		if ((IFM_OPTIONS(mii->mii_media_active) & IFM_ETH_RXPAUSE) != 0)
			mcr |= MCR0_FC_ENB;
#endif
	}
	FUNC1(sc, VTE_MCR0, mcr);
}