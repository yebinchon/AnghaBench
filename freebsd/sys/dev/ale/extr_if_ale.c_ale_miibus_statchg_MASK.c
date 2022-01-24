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
struct ale_softc {int ale_flags; struct ifnet* ale_ifp; int /*<<< orphan*/  ale_miibus; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ALE_FLAG_FASTETHER ; 
 int ALE_FLAG_LINK ; 
 int /*<<< orphan*/  ALE_MAC_CFG ; 
 int FUNC0 (struct ale_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ale_softc*,int /*<<< orphan*/ ,int) ; 
 int IFF_DRV_RUNNING ; 
#define  IFM_1000_T 130 
#define  IFM_100_TX 129 
#define  IFM_10_T 128 
 int IFM_ACTIVE ; 
 int IFM_AVALID ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int MAC_CFG_RX_ENB ; 
 int MAC_CFG_TX_ENB ; 
 int /*<<< orphan*/  FUNC3 (struct ale_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ale_softc*) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(device_t dev)
{
	struct ale_softc *sc;
	struct mii_data *mii;
	struct ifnet *ifp;
	uint32_t reg;

	sc = FUNC5(dev);
	mii = FUNC5(sc->ale_miibus);
	ifp = sc->ale_ifp;
	if (mii == NULL || ifp == NULL ||
	    (ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
		return;

	sc->ale_flags &= ~ALE_FLAG_LINK;
	if ((mii->mii_media_status & (IFM_ACTIVE | IFM_AVALID)) ==
	    (IFM_ACTIVE | IFM_AVALID)) {
		switch (FUNC2(mii->mii_media_active)) {
		case IFM_10_T:
		case IFM_100_TX:
			sc->ale_flags |= ALE_FLAG_LINK;
			break;
		case IFM_1000_T:
			if ((sc->ale_flags & ALE_FLAG_FASTETHER) == 0)
				sc->ale_flags |= ALE_FLAG_LINK;
			break;
		default:
			break;
		}
	}

	/* Stop Rx/Tx MACs. */
	FUNC4(sc);

	/* Program MACs with resolved speed/duplex/flow-control. */
	if ((sc->ale_flags & ALE_FLAG_LINK) != 0) {
		FUNC3(sc);
		/* Reenable Tx/Rx MACs. */
		reg = FUNC0(sc, ALE_MAC_CFG);
		reg |= MAC_CFG_TX_ENB | MAC_CFG_RX_ENB;
		FUNC1(sc, ALE_MAC_CFG, reg);
	}
}