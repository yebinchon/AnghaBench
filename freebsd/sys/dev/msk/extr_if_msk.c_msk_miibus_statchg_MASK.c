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
struct msk_softc {int dummy; } ;
struct msk_if_softc {int msk_flags; int /*<<< orphan*/  msk_port; struct ifnet* msk_ifp; int /*<<< orphan*/  msk_miibus; struct msk_softc* msk_softc; } ;
struct mii_data {int mii_media_status; int /*<<< orphan*/  mii_media_active; } ;
struct ifnet {int if_drv_flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct msk_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct msk_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  GMAC_CTRL ; 
 int /*<<< orphan*/  GMAC_IRQ_MSK ; 
 int FUNC2 (struct msk_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct msk_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int GMC_PAUSE_OFF ; 
 int GMC_PAUSE_ON ; 
 int GM_GPCR_AU_ALL_DIS ; 
 int GM_GPCR_DUP_FULL ; 
 int GM_GPCR_FC_RX_DIS ; 
 int GM_GPCR_FC_TX_DIS ; 
 int GM_GPCR_RX_ENA ; 
 int GM_GPCR_SPEED_100 ; 
 int GM_GPCR_SPEED_1000 ; 
 int GM_GPCR_TX_ENA ; 
 int /*<<< orphan*/  GM_GP_CTRL ; 
 int GM_IS_RX_FF_OR ; 
 int GM_IS_TX_FF_UR ; 
 int IFF_DRV_RUNNING ; 
#define  IFM_1000_CX 133 
#define  IFM_1000_LX 132 
#define  IFM_1000_SX 131 
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
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MSK_FLAG_FASTETHER ; 
 int MSK_FLAG_LINK ; 
 int /*<<< orphan*/  FUNC7 (struct msk_if_softc*) ; 
 int /*<<< orphan*/  PHY_ADDR_MARV ; 
 int /*<<< orphan*/  PHY_MARV_INT_MASK ; 
 int /*<<< orphan*/  PHY_M_IS_FIFO_ERROR ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct msk_if_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(device_t dev)
{
	struct msk_softc *sc;
	struct msk_if_softc *sc_if;
	struct mii_data *mii;
	struct ifnet *ifp;
	uint32_t gmac;

	sc_if = FUNC8(dev);
	sc = sc_if->msk_softc;

	FUNC7(sc_if);

	mii = FUNC8(sc_if->msk_miibus);
	ifp = sc_if->msk_ifp;
	if (mii == NULL || ifp == NULL ||
	    (ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
		return;

	sc_if->msk_flags &= ~MSK_FLAG_LINK;
	if ((mii->mii_media_status & (IFM_AVALID | IFM_ACTIVE)) ==
	    (IFM_AVALID | IFM_ACTIVE)) {
		switch (FUNC5(mii->mii_media_active)) {
		case IFM_10_T:
		case IFM_100_TX:
			sc_if->msk_flags |= MSK_FLAG_LINK;
			break;
		case IFM_1000_T:
		case IFM_1000_SX:
		case IFM_1000_LX:
		case IFM_1000_CX:
			if ((sc_if->msk_flags & MSK_FLAG_FASTETHER) == 0)
				sc_if->msk_flags |= MSK_FLAG_LINK;
			break;
		default:
			break;
		}
	}

	if ((sc_if->msk_flags & MSK_FLAG_LINK) != 0) {
		/* Enable Tx FIFO Underrun. */
		FUNC0(sc, FUNC6(sc_if->msk_port, GMAC_IRQ_MSK),
		    GM_IS_TX_FF_UR | GM_IS_RX_FF_OR);
		/*
		 * Because mii(4) notify msk(4) that it detected link status
		 * change, there is no need to enable automatic
		 * speed/flow-control/duplex updates.
		 */
		gmac = GM_GPCR_AU_ALL_DIS;
		switch (FUNC5(mii->mii_media_active)) {
		case IFM_1000_SX:
		case IFM_1000_T:
			gmac |= GM_GPCR_SPEED_1000;
			break;
		case IFM_100_TX:
			gmac |= GM_GPCR_SPEED_100;
			break;
		case IFM_10_T:
			break;
		}

		if ((FUNC4(mii->mii_media_active) &
		    IFM_ETH_RXPAUSE) == 0)
			gmac |= GM_GPCR_FC_RX_DIS;
		if ((FUNC4(mii->mii_media_active) &
		     IFM_ETH_TXPAUSE) == 0)
			gmac |= GM_GPCR_FC_TX_DIS;
		if ((FUNC4(mii->mii_media_active) & IFM_FDX) != 0)
			gmac |= GM_GPCR_DUP_FULL;
		else
			gmac |= GM_GPCR_FC_RX_DIS | GM_GPCR_FC_TX_DIS;
		gmac |= GM_GPCR_RX_ENA | GM_GPCR_TX_ENA;
		FUNC3(sc, sc_if->msk_port, GM_GP_CTRL, gmac);
		/* Read again to ensure writing. */
		FUNC2(sc, sc_if->msk_port, GM_GP_CTRL);
		gmac = GMC_PAUSE_OFF;
		if ((FUNC4(mii->mii_media_active) & IFM_FDX) != 0) {
			if ((FUNC4(mii->mii_media_active) &
			    IFM_ETH_RXPAUSE) != 0)
				gmac = GMC_PAUSE_ON;
		}
		FUNC1(sc, FUNC6(sc_if->msk_port, GMAC_CTRL), gmac);

		/* Enable PHY interrupt for FIFO underrun/overflow. */
		FUNC9(sc_if, PHY_ADDR_MARV,
		    PHY_MARV_INT_MASK, PHY_M_IS_FIFO_ERROR);
	} else {
		/*
		 * Link state changed to down.
		 * Disable PHY interrupts.
		 */
		FUNC9(sc_if, PHY_ADDR_MARV, PHY_MARV_INT_MASK, 0);
		/* Disable Rx/Tx MAC. */
		gmac = FUNC2(sc, sc_if->msk_port, GM_GP_CTRL);
		if ((gmac & (GM_GPCR_RX_ENA | GM_GPCR_TX_ENA)) != 0) {
			gmac &= ~(GM_GPCR_RX_ENA | GM_GPCR_TX_ENA);
			FUNC3(sc, sc_if->msk_port, GM_GP_CTRL, gmac);
			/* Read again to ensure writing. */
			FUNC2(sc, sc_if->msk_port, GM_GP_CTRL);
		}
	}
}