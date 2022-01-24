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
struct ffec_softc {int link_is_up; int phy_conn_type; struct mii_data* mii_softc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FEC_ECR_REG ; 
 int FEC_ECR_SPEED ; 
 int FEC_RCR_DRT ; 
 int FEC_RCR_FCE ; 
 int FEC_RCR_MII_MODE ; 
 int /*<<< orphan*/  FEC_RCR_REG ; 
 int FEC_RCR_RGMII_EN ; 
 int FEC_RCR_RMII_10T ; 
 int FEC_RCR_RMII_MODE ; 
 int FEC_TCR_FDEN ; 
 int /*<<< orphan*/  FEC_TCR_REG ; 
 int /*<<< orphan*/  FUNC0 (struct ffec_softc*) ; 
#define  IFM_1000_SX 137 
#define  IFM_1000_T 136 
#define  IFM_100_TX 135 
#define  IFM_10_T 134 
 int IFM_ACTIVE ; 
 int IFM_FDX ; 
 int IFM_FLOW ; 
#define  IFM_NONE 133 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
#define  MII_CONTYPE_RGMII 132 
#define  MII_CONTYPE_RGMII_ID 131 
#define  MII_CONTYPE_RGMII_RXID 130 
#define  MII_CONTYPE_RGMII_TXID 129 
#define  MII_CONTYPE_RMII 128 
 int FUNC3 (struct ffec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ffec_softc*,int /*<<< orphan*/ ,int) ; 
 struct ffec_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC7(device_t dev)
{
	struct ffec_softc *sc;
	struct mii_data *mii;
	uint32_t ecr, rcr, tcr;

	/*
	 * Called by the MII bus driver when the PHY establishes link to set the
	 * MAC interface registers.
	 */

	sc = FUNC5(dev);

	FUNC0(sc);

	mii = sc->mii_softc;

	if (mii->mii_media_status & IFM_ACTIVE)
		sc->link_is_up = true;
	else
		sc->link_is_up = false;

	ecr = FUNC3(sc, FEC_ECR_REG) & ~FEC_ECR_SPEED;
	rcr = FUNC3(sc, FEC_RCR_REG) & ~(FEC_RCR_RMII_10T | FEC_RCR_RMII_MODE |
	    FEC_RCR_RGMII_EN | FEC_RCR_DRT | FEC_RCR_FCE);
	tcr = FUNC3(sc, FEC_TCR_REG) & ~FEC_TCR_FDEN;

	rcr |= FEC_RCR_MII_MODE; /* Must always be on even for R[G]MII. */
	switch (sc->phy_conn_type) {
	case MII_CONTYPE_RMII:
		rcr |= FEC_RCR_RMII_MODE;
		break;
	case MII_CONTYPE_RGMII:
	case MII_CONTYPE_RGMII_ID:
	case MII_CONTYPE_RGMII_RXID:
	case MII_CONTYPE_RGMII_TXID:
		rcr |= FEC_RCR_RGMII_EN;
		break;
	default:
		break;
	}

	switch (FUNC2(mii->mii_media_active)) {
	case IFM_1000_T:
	case IFM_1000_SX:
		ecr |= FEC_ECR_SPEED;
		break;
	case IFM_100_TX:
		/* Not-FEC_ECR_SPEED + not-FEC_RCR_RMII_10T means 100TX */
		break;
	case IFM_10_T:
		rcr |= FEC_RCR_RMII_10T;
		break;
	case IFM_NONE:
		sc->link_is_up = false;
		return;
	default:
		sc->link_is_up = false;
		FUNC6(dev, "Unsupported media %u\n",
		    FUNC2(mii->mii_media_active));
		return;
	}

	if ((FUNC1(mii->mii_media_active) & IFM_FDX) != 0)
		tcr |= FEC_TCR_FDEN;
	else
		rcr |= FEC_RCR_DRT;

	if ((FUNC1(mii->mii_media_active) & IFM_FLOW) != 0)
		rcr |= FEC_RCR_FCE;

	FUNC4(sc, FEC_RCR_REG, rcr);
	FUNC4(sc, FEC_TCR_REG, tcr);
	FUNC4(sc, FEC_ECR_REG, ecr);
}