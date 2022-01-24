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
struct mii_data {int mii_media_status; int /*<<< orphan*/  mii_media_active; } ;
struct ifnet {int if_drv_flags; } ;
struct axe_softc {int sc_flags; int /*<<< orphan*/  sc_ue; int /*<<< orphan*/  sc_mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int AXE_178_MEDIA_100TX ; 
 int AXE_178_MEDIA_ENCK ; 
 int AXE_178_MEDIA_GMII ; 
 int AXE_178_MEDIA_MAGIC ; 
 int AXE_178_MEDIA_RXFLOW_CONTROL_EN ; 
 int AXE_178_MEDIA_RX_EN ; 
 int AXE_178_MEDIA_TXFLOW_CONTROL_EN ; 
 int /*<<< orphan*/  AXE_CMD_WRITE_MEDIA ; 
 int AXE_FLAG_178 ; 
 int AXE_FLAG_LINK ; 
 scalar_t__ FUNC0 (struct axe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct axe_softc*) ; 
 int AXE_MEDIA_FULL_DUPLEX ; 
 int /*<<< orphan*/  FUNC2 (struct axe_softc*) ; 
 struct mii_data* FUNC3 (struct axe_softc*) ; 
 int IFF_DRV_RUNNING ; 
#define  IFM_1000_T 130 
#define  IFM_100_TX 129 
#define  IFM_10_T 128 
 int IFM_ACTIVE ; 
 int IFM_AVALID ; 
 int IFM_ETH_RXPAUSE ; 
 int IFM_ETH_TXPAUSE ; 
 int IFM_FDX ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct axe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct axe_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 struct ifnet* FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(device_t dev)
{
	struct axe_softc *sc = FUNC7(dev);
	struct mii_data *mii = FUNC3(sc);
	struct ifnet *ifp;
	uint16_t val;
	int err, locked;

	locked = FUNC9(&sc->sc_mtx);
	if (!locked)
		FUNC1(sc);

	ifp = FUNC10(&sc->sc_ue);
	if (mii == NULL || ifp == NULL ||
	    (ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
		goto done;

	sc->sc_flags &= ~AXE_FLAG_LINK;
	if ((mii->mii_media_status & (IFM_ACTIVE | IFM_AVALID)) ==
	    (IFM_ACTIVE | IFM_AVALID)) {
		switch (FUNC5(mii->mii_media_active)) {
		case IFM_10_T:
		case IFM_100_TX:
			sc->sc_flags |= AXE_FLAG_LINK;
			break;
		case IFM_1000_T:
			if ((sc->sc_flags & AXE_FLAG_178) == 0)
				break;
			sc->sc_flags |= AXE_FLAG_LINK;
			break;
		default:
			break;
		}
	}

	/* Lost link, do nothing. */
	if ((sc->sc_flags & AXE_FLAG_LINK) == 0)
		goto done;

	val = 0;
	if ((FUNC4(mii->mii_media_active) & IFM_FDX) != 0) {
		val |= AXE_MEDIA_FULL_DUPLEX;
		if (FUNC0(sc)) {
			if ((FUNC4(mii->mii_media_active) &
			    IFM_ETH_TXPAUSE) != 0)
				val |= AXE_178_MEDIA_TXFLOW_CONTROL_EN;
			if ((FUNC4(mii->mii_media_active) &
			    IFM_ETH_RXPAUSE) != 0)
				val |= AXE_178_MEDIA_RXFLOW_CONTROL_EN;
		}
	}
	if (FUNC0(sc)) {
		val |= AXE_178_MEDIA_RX_EN | AXE_178_MEDIA_MAGIC;
		if ((sc->sc_flags & AXE_FLAG_178) != 0)
			val |= AXE_178_MEDIA_ENCK;
		switch (FUNC5(mii->mii_media_active)) {
		case IFM_1000_T:
			val |= AXE_178_MEDIA_GMII | AXE_178_MEDIA_ENCK;
			break;
		case IFM_100_TX:
			val |= AXE_178_MEDIA_100TX;
			break;
		case IFM_10_T:
			/* doesn't need to be handled */
			break;
		}
	}
	err = FUNC6(sc, AXE_CMD_WRITE_MEDIA, 0, val, NULL);
	if (err)
		FUNC8(dev, "media change failed, error %d\n", err);
done:
	if (!locked)
		FUNC2(sc);
}