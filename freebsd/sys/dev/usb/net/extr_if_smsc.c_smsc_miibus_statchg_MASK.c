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
struct smsc_softc {int sc_flags; int sc_mac_csr; int /*<<< orphan*/  sc_ue; int /*<<< orphan*/  sc_mtx; } ;
struct mii_data {int mii_media_status; int /*<<< orphan*/  mii_media_active; } ;
struct ifnet {int if_drv_flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int IFF_DRV_RUNNING ; 
#define  IFM_1000_T 130 
#define  IFM_100_TX 129 
#define  IFM_10_T 128 
 int IFM_ACTIVE ; 
 int IFM_AVALID ; 
 int IFM_ETH_RXPAUSE ; 
 int IFM_ETH_TXPAUSE ; 
 int IFM_FDX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMSC_AFC_CFG ; 
 int SMSC_FLAG_LINK ; 
 int /*<<< orphan*/  SMSC_FLOW ; 
 int /*<<< orphan*/  FUNC2 (struct smsc_softc*) ; 
 int /*<<< orphan*/  SMSC_MAC_CSR ; 
 int SMSC_MAC_CSR_FDPX ; 
 int SMSC_MAC_CSR_RCVOWN ; 
 int /*<<< orphan*/  FUNC3 (struct smsc_softc*) ; 
 struct smsc_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct smsc_softc*,char*) ; 
 int FUNC7 (struct smsc_softc*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct smsc_softc*,char*,int) ; 
 int FUNC9 (struct smsc_softc*,int /*<<< orphan*/ ,int) ; 
 struct ifnet* FUNC10 (int /*<<< orphan*/ *) ; 
 struct mii_data* FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(device_t dev)
{
	struct smsc_softc *sc = FUNC4(dev);
	struct mii_data *mii = FUNC11(&sc->sc_ue);
	struct ifnet *ifp;
	int locked;
	int err;
	uint32_t flow;
	uint32_t afc_cfg;

	locked = FUNC5(&sc->sc_mtx);
	if (!locked)
		FUNC2(sc);

	ifp = FUNC10(&sc->sc_ue);
	if (mii == NULL || ifp == NULL ||
	    (ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
		goto done;

	/* Use the MII status to determine link status */
	sc->sc_flags &= ~SMSC_FLAG_LINK;
	if ((mii->mii_media_status & (IFM_ACTIVE | IFM_AVALID)) ==
	    (IFM_ACTIVE | IFM_AVALID)) {
		switch (FUNC1(mii->mii_media_active)) {
			case IFM_10_T:
			case IFM_100_TX:
				sc->sc_flags |= SMSC_FLAG_LINK;
				break;
			case IFM_1000_T:
				/* Gigabit ethernet not supported by chipset */
				break;
			default:
				break;
		}
	}

	/* Lost link, do nothing. */
	if ((sc->sc_flags & SMSC_FLAG_LINK) == 0) {
		FUNC6(sc, "link flag not set\n");
		goto done;
	}
	
	err = FUNC7(sc, SMSC_AFC_CFG, &afc_cfg);
	if (err) {
		FUNC8(sc, "failed to read initial AFC_CFG, error %d\n", err);
		goto done;
	}
	
	/* Enable/disable full duplex operation and TX/RX pause */
	if ((FUNC0(mii->mii_media_active) & IFM_FDX) != 0) {
		FUNC6(sc, "full duplex operation\n");
		sc->sc_mac_csr &= ~SMSC_MAC_CSR_RCVOWN;
		sc->sc_mac_csr |= SMSC_MAC_CSR_FDPX;

		if ((FUNC0(mii->mii_media_active) & IFM_ETH_RXPAUSE) != 0)
			flow = 0xffff0002;
		else
			flow = 0;
			
		if ((FUNC0(mii->mii_media_active) & IFM_ETH_TXPAUSE) != 0)
			afc_cfg |= 0xf;
		else
			afc_cfg &= ~0xf;
		
	} else {
		FUNC6(sc, "half duplex operation\n");
		sc->sc_mac_csr &= ~SMSC_MAC_CSR_FDPX;
		sc->sc_mac_csr |= SMSC_MAC_CSR_RCVOWN;
		
		flow = 0;
		afc_cfg |= 0xf;
	}

	err = FUNC9(sc, SMSC_MAC_CSR, sc->sc_mac_csr);
	err += FUNC9(sc, SMSC_FLOW, flow);
	err += FUNC9(sc, SMSC_AFC_CFG, afc_cfg);
	if (err)
		FUNC8(sc, "media change failed, error %d\n", err);
	
done:
	if (!locked)
		FUNC3(sc);
}