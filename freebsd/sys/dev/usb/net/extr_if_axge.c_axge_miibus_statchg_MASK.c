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
struct mii_data {int mii_media_status; int /*<<< orphan*/  mii_media_active; } ;
struct ifnet {int if_drv_flags; } ;
struct axge_softc {int sc_flags; int /*<<< orphan*/  sc_ue; int /*<<< orphan*/  sc_mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AXGE_ACCESS_MAC ; 
 int AXGE_FLAG_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct axge_softc*) ; 
 int /*<<< orphan*/  AXGE_MSR ; 
 int /*<<< orphan*/  AXGE_PLSR ; 
 int /*<<< orphan*/  AXGE_RX_BULKIN_QCTRL ; 
 int /*<<< orphan*/  FUNC1 (struct axge_softc*) ; 
 struct mii_data* FUNC2 (struct axge_softc*) ; 
 int IFF_DRV_RUNNING ; 
#define  IFM_1000_T 130 
#define  IFM_100_TX 129 
#define  IFM_10_T 128 
 int IFM_ACTIVE ; 
 int IFM_AVALID ; 
 int IFM_ETH_RXPAUSE ; 
 int IFM_ETH_TXPAUSE ; 
 int IFM_FDX ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int MSR_EN_125MHZ ; 
 int MSR_FD ; 
 int MSR_GM ; 
 int MSR_PS ; 
 int MSR_RE ; 
 int MSR_RFC ; 
 int MSR_TFC ; 
 int PLSR_USB_HS ; 
 int PLSR_USB_SS ; 
 int /*<<< orphan*/ * axge_bulk_size ; 
 int FUNC5 (struct axge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct axge_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct axge_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*,int) ; 
 struct axge_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int*,int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 struct ifnet* FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(device_t dev)
{
	struct axge_softc *sc;
	struct mii_data *mii;
	struct ifnet *ifp;
	uint8_t link_status, tmp[5];
	uint16_t val;
	int locked;

	sc = FUNC8(dev);
	mii = FUNC2(sc);
	locked = FUNC10(&sc->sc_mtx);
	if (!locked)
		FUNC0(sc);

	ifp = FUNC11(&sc->sc_ue);
	if (mii == NULL || ifp == NULL ||
	    (ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
		goto done;

	sc->sc_flags &= ~AXGE_FLAG_LINK;
	if ((mii->mii_media_status & (IFM_ACTIVE | IFM_AVALID)) ==
	    (IFM_ACTIVE | IFM_AVALID)) {
		switch (FUNC4(mii->mii_media_active)) {
		case IFM_10_T:
		case IFM_100_TX:
		case IFM_1000_T:
			sc->sc_flags |= AXGE_FLAG_LINK;
			break;
		default:
			break;
		}
	}

	/* Lost link, do nothing. */
	if ((sc->sc_flags & AXGE_FLAG_LINK) == 0)
		goto done;

	link_status = FUNC5(sc, AXGE_ACCESS_MAC, AXGE_PLSR);

	val = 0;
	if ((FUNC3(mii->mii_media_active) & IFM_FDX) != 0) {
		val |= MSR_FD;
		if ((FUNC3(mii->mii_media_active) & IFM_ETH_TXPAUSE) != 0)
			val |= MSR_TFC;
		if ((FUNC3(mii->mii_media_active) & IFM_ETH_RXPAUSE) != 0)
			val |= MSR_RFC;
	}
	val |=  MSR_RE;
	switch (FUNC4(mii->mii_media_active)) {
	case IFM_1000_T:
		val |= MSR_GM | MSR_EN_125MHZ;
		if (link_status & PLSR_USB_SS)
			FUNC9(tmp, &axge_bulk_size[0], 5);
		else if (link_status & PLSR_USB_HS)
			FUNC9(tmp, &axge_bulk_size[1], 5);
		else
			FUNC9(tmp, &axge_bulk_size[3], 5);
		break;
	case IFM_100_TX:
		val |= MSR_PS;
		if (link_status & (PLSR_USB_SS | PLSR_USB_HS))
			FUNC9(tmp, &axge_bulk_size[2], 5);
		else
			FUNC9(tmp, &axge_bulk_size[3], 5);
		break;
	case IFM_10_T:
		FUNC9(tmp, &axge_bulk_size[3], 5);
		break;
	}
	/* Rx bulk configuration. */
	FUNC7(sc, AXGE_ACCESS_MAC, 5, AXGE_RX_BULKIN_QCTRL, tmp, 5);
	FUNC6(sc, AXGE_ACCESS_MAC, 2, AXGE_MSR, val);
done:
	if (!locked)
		FUNC1(sc);
}