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
typedef  int /*<<< orphan*/  uint32_t ;
struct nfe_softc {int nfe_link; int /*<<< orphan*/  nfe_ifp; int /*<<< orphan*/  nfe_miibus; } ;
struct mii_data {int mii_media_status; int /*<<< orphan*/  mii_media_active; } ;
typedef  int /*<<< orphan*/  if_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int IFF_DRV_RUNNING ; 
#define  IFM_1000_T 130 
#define  IFM_100_TX 129 
#define  IFM_10_T 128 
 int IFM_ACTIVE ; 
 int IFM_AVALID ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFE_RX_CTL ; 
 int /*<<< orphan*/  NFE_RX_START ; 
 int /*<<< orphan*/  NFE_TX_CTL ; 
 int /*<<< orphan*/  NFE_TX_START ; 
 int /*<<< orphan*/  FUNC2 (struct nfe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfe_softc*,struct mii_data*) ; 

__attribute__((used)) static void
FUNC6(device_t dev)
{
	struct nfe_softc *sc;
	struct mii_data *mii;
	if_t ifp;
	uint32_t rxctl, txctl;

	sc = FUNC3(dev);

	mii = FUNC3(sc->nfe_miibus);
	ifp = sc->nfe_ifp;

	sc->nfe_link = 0;
	if ((mii->mii_media_status & (IFM_ACTIVE | IFM_AVALID)) ==
	    (IFM_ACTIVE | IFM_AVALID)) {
		switch (FUNC0(mii->mii_media_active)) {
		case IFM_10_T:
		case IFM_100_TX:
		case IFM_1000_T:
			sc->nfe_link = 1;
			break;
		default:
			break;
		}
	}

	FUNC5(sc, mii);
	txctl = FUNC1(sc, NFE_TX_CTL);
	rxctl = FUNC1(sc, NFE_RX_CTL);
	if (sc->nfe_link != 0 && (FUNC4(ifp) & IFF_DRV_RUNNING) != 0) {
		txctl |= NFE_TX_START;
		rxctl |= NFE_RX_START;
	} else {
		txctl &= ~NFE_TX_START;
		rxctl &= ~NFE_RX_START;
	}
	FUNC2(sc, NFE_TX_CTL, txctl);
	FUNC2(sc, NFE_RX_CTL, rxctl);
}