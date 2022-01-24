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
struct bge_softc {int bge_link; int /*<<< orphan*/  bge_asicrev; int /*<<< orphan*/  bge_miibus; int /*<<< orphan*/  bge_ifp; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BGE_ASICREV_BCM5906 ; 
 int BGE_MACMODE_HALF_DUPLEX ; 
 int BGE_MACMODE_PORTMODE ; 
 int /*<<< orphan*/  BGE_MAC_MODE ; 
 int BGE_PORTMODE_GMII ; 
 int BGE_PORTMODE_MII ; 
 int BGE_RXMODE_FLOWCTL_ENABLE ; 
 int /*<<< orphan*/  BGE_RX_MODE ; 
 int BGE_TXMODE_FLOWCTL_ENABLE ; 
 int /*<<< orphan*/  BGE_TX_MODE ; 
 int FUNC0 (struct bge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bge_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int IFF_DRV_RUNNING ; 
#define  IFM_1000_SX 132 
#define  IFM_1000_T 131 
#define  IFM_100_TX 130 
#define  IFM_10_T 129 
#define  IFM_2500_SX 128 
 int IFM_ACTIVE ; 
 int IFM_AVALID ; 
 int IFM_ETH_RXPAUSE ; 
 int IFM_ETH_TXPAUSE ; 
 int IFM_FDX ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int const FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(device_t dev)
{
	struct bge_softc *sc;
	struct mii_data *mii;
	uint32_t mac_mode, rx_mode, tx_mode;

	sc = FUNC5(dev);
	if ((FUNC6(sc->bge_ifp) & IFF_DRV_RUNNING) == 0)
		return;
	mii = FUNC5(sc->bge_miibus);

	if ((mii->mii_media_status & (IFM_ACTIVE | IFM_AVALID)) ==
	    (IFM_ACTIVE | IFM_AVALID)) {
		switch (FUNC4(mii->mii_media_active)) {
		case IFM_10_T:
		case IFM_100_TX:
			sc->bge_link = 1;
			break;
		case IFM_1000_T:
		case IFM_1000_SX:
		case IFM_2500_SX:
			if (sc->bge_asicrev != BGE_ASICREV_BCM5906)
				sc->bge_link = 1;
			else
				sc->bge_link = 0;
			break;
		default:
			sc->bge_link = 0;
			break;
		}
	} else
		sc->bge_link = 0;
	if (sc->bge_link == 0)
		return;

	/*
	 * APE firmware touches these registers to keep the MAC
	 * connected to the outside world.  Try to keep the
	 * accesses atomic.
	 */

	/* Set the port mode (MII/GMII) to match the link speed. */
	mac_mode = FUNC0(sc, BGE_MAC_MODE) &
	    ~(BGE_MACMODE_PORTMODE | BGE_MACMODE_HALF_DUPLEX);
	tx_mode = FUNC0(sc, BGE_TX_MODE);
	rx_mode = FUNC0(sc, BGE_RX_MODE);

	if (FUNC4(mii->mii_media_active) == IFM_1000_T ||
	    FUNC4(mii->mii_media_active) == IFM_1000_SX)
		mac_mode |= BGE_PORTMODE_GMII;
	else
		mac_mode |= BGE_PORTMODE_MII;

	/* Set MAC flow control behavior to match link flow control settings. */
	tx_mode &= ~BGE_TXMODE_FLOWCTL_ENABLE;
	rx_mode &= ~BGE_RXMODE_FLOWCTL_ENABLE;
	if ((FUNC3(mii->mii_media_active) & IFM_FDX) != 0) {
		if ((FUNC3(mii->mii_media_active) & IFM_ETH_TXPAUSE) != 0)
			tx_mode |= BGE_TXMODE_FLOWCTL_ENABLE;
		if ((FUNC3(mii->mii_media_active) & IFM_ETH_RXPAUSE) != 0)
			rx_mode |= BGE_RXMODE_FLOWCTL_ENABLE;
	} else
		mac_mode |= BGE_MACMODE_HALF_DUPLEX;

	FUNC1(sc, BGE_MAC_MODE, mac_mode);
	FUNC2(40);
	FUNC1(sc, BGE_TX_MODE, tx_mode);
	FUNC1(sc, BGE_RX_MODE, rx_mode);
}