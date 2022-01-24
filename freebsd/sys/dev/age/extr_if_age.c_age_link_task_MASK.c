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
struct mii_data {int mii_media_status; int /*<<< orphan*/  mii_media_active; } ;
struct ifnet {int if_drv_flags; } ;
struct age_softc {int age_flags; struct ifnet* age_ifp; int /*<<< orphan*/  age_miibus; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGE_DMA_CFG ; 
 int AGE_FLAG_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct age_softc*) ; 
 int /*<<< orphan*/  AGE_MAC_CFG ; 
 int /*<<< orphan*/  FUNC1 (struct age_softc*) ; 
 int FUNC2 (struct age_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct age_softc*,int /*<<< orphan*/ ,int) ; 
 int DMA_CFG_RD_ENB ; 
 int DMA_CFG_WR_ENB ; 
 int IFF_DRV_RUNNING ; 
#define  IFM_1000_T 130 
#define  IFM_100_TX 129 
#define  IFM_10_T 128 
 int IFM_AVALID ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int MAC_CFG_RX_ENB ; 
 int MAC_CFG_TX_ENB ; 
 int /*<<< orphan*/  FUNC5 (struct age_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct age_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct age_softc*) ; 
 struct mii_data* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(void *arg, int pending)
{
	struct age_softc *sc;
	struct mii_data *mii;
	struct ifnet *ifp;
	uint32_t reg;

	sc = (struct age_softc *)arg;

	FUNC0(sc);
	mii = FUNC8(sc->age_miibus);
	ifp = sc->age_ifp;
	if (mii == NULL || ifp == NULL ||
	    (ifp->if_drv_flags & IFF_DRV_RUNNING) == 0) {
		FUNC1(sc);
		return;
	}

	sc->age_flags &= ~AGE_FLAG_LINK;
	if ((mii->mii_media_status & IFM_AVALID) != 0) {
		switch (FUNC4(mii->mii_media_active)) {
		case IFM_10_T:
		case IFM_100_TX:
		case IFM_1000_T:
			sc->age_flags |= AGE_FLAG_LINK;
			break;
		default:
			break;
		}
	}

	/* Stop Rx/Tx MACs. */
	FUNC6(sc);
	FUNC7(sc);

	/* Program MACs with resolved speed/duplex/flow-control. */
	if ((sc->age_flags & AGE_FLAG_LINK) != 0) {
		FUNC5(sc);
		reg = FUNC2(sc, AGE_MAC_CFG);
		/* Restart DMA engine and Tx/Rx MAC. */
		FUNC3(sc, AGE_DMA_CFG, FUNC2(sc, AGE_DMA_CFG) |
		    DMA_CFG_RD_ENB | DMA_CFG_WR_ENB);
		reg |= MAC_CFG_TX_ENB | MAC_CFG_RX_ENB;
		FUNC3(sc, AGE_MAC_CFG, reg);
	}

	FUNC1(sc);
}