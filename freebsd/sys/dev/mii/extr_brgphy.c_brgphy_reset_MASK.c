#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mii_softc {int mii_mpd_oui; int mii_mpd_rev; TYPE_1__* mii_pdata; int /*<<< orphan*/  mii_mpd_model; } ;
struct bge_softc {int bge_phy_flags; int bge_flags; scalar_t__ bge_asicrev; } ;
struct bce_softc {int bce_phy_flags; int bce_shared_hw_cfg; int bce_port_hw_cfg; } ;
typedef  int /*<<< orphan*/  if_t ;
struct TYPE_2__ {int /*<<< orphan*/  mii_ifp; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bce_softc*) ; 
 scalar_t__ BCE_CHIP_ID_5708_A0 ; 
 scalar_t__ BCE_CHIP_ID_5708_B0 ; 
 scalar_t__ BCE_CHIP_ID_5708_B1 ; 
 scalar_t__ FUNC1 (struct bce_softc*) ; 
 scalar_t__ BCE_CHIP_NUM_5708 ; 
 scalar_t__ BCE_CHIP_NUM_5709 ; 
 scalar_t__ FUNC2 (struct bce_softc*) ; 
 scalar_t__ BCE_CHIP_REV_Ax ; 
 scalar_t__ BCE_CHIP_REV_Bx ; 
 int BCE_PHY_2_5G_CAPABLE_FLAG ; 
 int BCE_PHY_SERDES_FLAG ; 
 int BCE_PORT_HW_CFG_CFG_TXCTL3_MASK ; 
 int BCE_SHARED_HW_CFG_PHY_BACKPLANE ; 
 scalar_t__ BGE_ASICREV_BCM5906 ; 
 int BGE_FLAG_JUMBO ; 
 int BGE_PHY_5704_A0_BUG ; 
 int BGE_PHY_ADC_BUG ; 
 int BGE_PHY_ADJUST_TRIM ; 
 int BGE_PHY_BER_BUG ; 
 int BGE_PHY_CRC_BUG ; 
 int BGE_PHY_JITTER_BUG ; 
 int BGE_PHY_NO_3LED ; 
 int BGE_PHY_NO_WIRESPEED ; 
 int /*<<< orphan*/  BRGPHY_5708S_ANEG_NXT_PG_XMIT1 ; 
 int BRGPHY_5708S_ANEG_NXT_PG_XMIT1_25G ; 
 int /*<<< orphan*/  BRGPHY_5708S_BLOCK_ADDR ; 
 int BRGPHY_5708S_DIG3_PG2 ; 
 int BRGPHY_5708S_DIG_PG0 ; 
 int /*<<< orphan*/  BRGPHY_5708S_PG0_1000X_CTL1 ; 
 int BRGPHY_5708S_PG0_1000X_CTL1_AUTODET_EN ; 
 int BRGPHY_5708S_PG0_1000X_CTL1_FIBER_MODE ; 
 int /*<<< orphan*/  BRGPHY_5708S_PG0_1000X_CTL2 ; 
 int BRGPHY_5708S_PG0_1000X_CTL2_PAR_DET_EN ; 
 int /*<<< orphan*/  BRGPHY_5708S_PG2_DIGCTL_3_0 ; 
 int BRGPHY_5708S_PG2_DIGCTL_3_0_USE_IEEE ; 
 int /*<<< orphan*/  BRGPHY_5708S_PG5_TXACTL1 ; 
 int /*<<< orphan*/  BRGPHY_5708S_PG5_TXACTL3 ; 
 int BRGPHY_5708S_TX_MISC_PG5 ; 
 int /*<<< orphan*/  BRGPHY_BLOCK_ADDR ; 
 int BRGPHY_BLOCK_ADDR_CL73_USER_B0 ; 
 int BRGPHY_BLOCK_ADDR_COMBO_IEEE0 ; 
 int BRGPHY_BLOCK_ADDR_MRBE ; 
 int BRGPHY_BLOCK_ADDR_OVER_1G ; 
 int BRGPHY_BLOCK_ADDR_SERDES_DIG ; 
 int BRGPHY_BMCR_RESET ; 
 int /*<<< orphan*/  BRGPHY_CL73_USER_B0_MBRE_CTL1 ; 
 int BRGPHY_CL73_USER_B0_MBRE_CTL1_ANEG ; 
 int BRGPHY_CL73_USER_B0_MBRE_CTL1_NP_AFT_BP ; 
 int BRGPHY_CL73_USER_B0_MBRE_CTL1_STA_MGR ; 
 int /*<<< orphan*/  BRGPHY_MII_BMCR ; 
 int /*<<< orphan*/  BRGPHY_MII_EPHY_PTEST ; 
 int /*<<< orphan*/  BRGPHY_MII_PHY_EXTCTL ; 
 int /*<<< orphan*/  BRGPHY_MRBE_MSG_PG5_NP ; 
 int BRGPHY_MRBE_MSG_PG5_NP_MBRE ; 
 int BRGPHY_MRBE_MSG_PG5_NP_T2 ; 
 int /*<<< orphan*/  BRGPHY_OVER_1G_UNFORMAT_PG1 ; 
 int BRGPHY_PHY_EXTCTL_3_LED ; 
 int BRGPHY_SD_DIG_1000X_CTL1_AUTODET ; 
 int BRGPHY_SD_DIG_1000X_CTL1_FIBER ; 
 int /*<<< orphan*/  BRGPHY_SERDES_DIG_1000X_CTL1 ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
#define  MII_MODEL_BROADCOM3_BCM5717C 138 
#define  MII_MODEL_BROADCOM3_BCM5719C 137 
#define  MII_MODEL_BROADCOM3_BCM5720C 136 
#define  MII_MODEL_BROADCOM3_BCM57765 135 
#define  MII_MODEL_BROADCOM_BCM5400 134 
#define  MII_MODEL_BROADCOM_BCM5401 133 
#define  MII_MODEL_BROADCOM_BCM5411 132 
#define  MII_MODEL_BROADCOM_BCM54K2 131 
#define  MII_OUI_BROADCOM 130 
#define  MII_OUI_BROADCOM3 129 
#define  MII_OUI_BROADCOM4 128 
 int FUNC4 (struct mii_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mii_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mii_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct mii_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct mii_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct mii_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct mii_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct mii_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct mii_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct mii_softc*) ; 
 int /*<<< orphan*/  FUNC14 (struct mii_softc*) ; 
 int /*<<< orphan*/  FUNC15 (struct mii_softc*) ; 
 int /*<<< orphan*/  FUNC16 (struct mii_softc*) ; 
 int /*<<< orphan*/  FUNC17 (struct mii_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (struct mii_softc*,char*) ; 
 void* FUNC20 (struct mii_softc*) ; 

__attribute__((used)) static void
FUNC21(struct mii_softc *sc)
{
	struct bge_softc *bge_sc = NULL;
	struct bce_softc *bce_sc = NULL;
	if_t ifp;
	int i, val;

	/*
	 * Perform a reset.  Note that at least some Broadcom PHYs default to
	 * being powered down as well as isolated after a reset but don't work
	 * if one or both of these bits are cleared.  However, they just work
	 * fine if both bits remain set, so we don't use mii_phy_reset() here.
	 */
	FUNC5(sc, BRGPHY_MII_BMCR, BRGPHY_BMCR_RESET);

	/* Wait 100ms for it to complete. */
	for (i = 0; i < 100; i++) {
		if ((FUNC4(sc, BRGPHY_MII_BMCR) & BRGPHY_BMCR_RESET) == 0)
			break;
		FUNC3(1000);
	}

	/* Handle any PHY specific procedures following the reset. */
	switch (sc->mii_mpd_oui) {
	case MII_OUI_BROADCOM:
		switch (sc->mii_mpd_model) {
		case MII_MODEL_BROADCOM_BCM5400:
			FUNC6(sc);
			break;
		case MII_MODEL_BROADCOM_BCM5401:
			if (sc->mii_mpd_rev == 1 || sc->mii_mpd_rev == 3)
				FUNC6(sc);
			break;
		case MII_MODEL_BROADCOM_BCM5411:
			FUNC7(sc);
			break;
		case MII_MODEL_BROADCOM_BCM54K2:
			FUNC8(sc);
			break;
		}
		break;
	case MII_OUI_BROADCOM3:
		switch (sc->mii_mpd_model) {
		case MII_MODEL_BROADCOM3_BCM5717C:
		case MII_MODEL_BROADCOM3_BCM5719C:
		case MII_MODEL_BROADCOM3_BCM5720C:
		case MII_MODEL_BROADCOM3_BCM57765:
			return;
		}
		break;
	case MII_OUI_BROADCOM4:
		return;
	}

	ifp = sc->mii_pdata->mii_ifp;

	/* Find the driver associated with this PHY. */
	if (FUNC19(sc, "bge"))
		bge_sc = FUNC20(sc);
	else if (FUNC19(sc, "bce"))
		bce_sc = FUNC20(sc);

	if (bge_sc) {
		/* Fix up various bugs */
		if (bge_sc->bge_phy_flags & BGE_PHY_5704_A0_BUG)
			FUNC10(sc);
		if (bge_sc->bge_phy_flags & BGE_PHY_ADC_BUG)
			FUNC11(sc);
		if (bge_sc->bge_phy_flags & BGE_PHY_ADJUST_TRIM)
			FUNC12(sc);
		if (bge_sc->bge_phy_flags & BGE_PHY_BER_BUG)
			FUNC13(sc);
		if (bge_sc->bge_phy_flags & BGE_PHY_CRC_BUG)
			FUNC14(sc);
		if (bge_sc->bge_phy_flags & BGE_PHY_JITTER_BUG)
			FUNC16(sc);

		if (bge_sc->bge_flags & BGE_FLAG_JUMBO)
			FUNC17(sc, FUNC18(ifp));

		if ((bge_sc->bge_phy_flags & BGE_PHY_NO_WIRESPEED) == 0)
			FUNC9(sc);

		/* Enable Link LED on Dell boxes */
		if (bge_sc->bge_phy_flags & BGE_PHY_NO_3LED) {
			FUNC5(sc, BRGPHY_MII_PHY_EXTCTL,
			    FUNC4(sc, BRGPHY_MII_PHY_EXTCTL) &
			    ~BRGPHY_PHY_EXTCTL_3_LED);
		}

		/* Adjust output voltage (From Linux driver) */
		if (bge_sc->bge_asicrev == BGE_ASICREV_BCM5906)
			FUNC5(sc, BRGPHY_MII_EPHY_PTEST, 0x12);
	} else if (bce_sc) {
		if (FUNC1(bce_sc) == BCE_CHIP_NUM_5708 &&
			(bce_sc->bce_phy_flags & BCE_PHY_SERDES_FLAG)) {

			/* Store autoneg capabilities/results in digital block (Page 0) */
			FUNC5(sc, BRGPHY_5708S_BLOCK_ADDR, BRGPHY_5708S_DIG3_PG2);
			FUNC5(sc, BRGPHY_5708S_PG2_DIGCTL_3_0,
				BRGPHY_5708S_PG2_DIGCTL_3_0_USE_IEEE);
			FUNC5(sc, BRGPHY_5708S_BLOCK_ADDR, BRGPHY_5708S_DIG_PG0);

			/* Enable fiber mode and autodetection */
			FUNC5(sc, BRGPHY_5708S_PG0_1000X_CTL1,
				FUNC4(sc, BRGPHY_5708S_PG0_1000X_CTL1) |
				BRGPHY_5708S_PG0_1000X_CTL1_AUTODET_EN |
				BRGPHY_5708S_PG0_1000X_CTL1_FIBER_MODE);

			/* Enable parallel detection */
			FUNC5(sc, BRGPHY_5708S_PG0_1000X_CTL2,
				FUNC4(sc, BRGPHY_5708S_PG0_1000X_CTL2) |
				BRGPHY_5708S_PG0_1000X_CTL2_PAR_DET_EN);

			/* Advertise 2.5G support through next page during autoneg */
			if (bce_sc->bce_phy_flags & BCE_PHY_2_5G_CAPABLE_FLAG)
				FUNC5(sc, BRGPHY_5708S_ANEG_NXT_PG_XMIT1,
					FUNC4(sc, BRGPHY_5708S_ANEG_NXT_PG_XMIT1) |
					BRGPHY_5708S_ANEG_NXT_PG_XMIT1_25G);

			/* Increase TX signal amplitude */
			if ((FUNC0(bce_sc) == BCE_CHIP_ID_5708_A0) ||
			    (FUNC0(bce_sc) == BCE_CHIP_ID_5708_B0) ||
			    (FUNC0(bce_sc) == BCE_CHIP_ID_5708_B1)) {
				FUNC5(sc, BRGPHY_5708S_BLOCK_ADDR,
					BRGPHY_5708S_TX_MISC_PG5);
				FUNC5(sc, BRGPHY_5708S_PG5_TXACTL1,
					FUNC4(sc, BRGPHY_5708S_PG5_TXACTL1) & ~0x30);
				FUNC5(sc, BRGPHY_5708S_BLOCK_ADDR,
					BRGPHY_5708S_DIG_PG0);
			}

			/* Backplanes use special driver/pre-driver/pre-emphasis values. */
			if ((bce_sc->bce_shared_hw_cfg & BCE_SHARED_HW_CFG_PHY_BACKPLANE) &&
				(bce_sc->bce_port_hw_cfg & BCE_PORT_HW_CFG_CFG_TXCTL3_MASK)) {
					FUNC5(sc, BRGPHY_5708S_BLOCK_ADDR,
						BRGPHY_5708S_TX_MISC_PG5);
					FUNC5(sc, BRGPHY_5708S_PG5_TXACTL3,
						bce_sc->bce_port_hw_cfg &
						BCE_PORT_HW_CFG_CFG_TXCTL3_MASK);
					FUNC5(sc, BRGPHY_5708S_BLOCK_ADDR,
						BRGPHY_5708S_DIG_PG0);
			}
		} else if (FUNC1(bce_sc) == BCE_CHIP_NUM_5709 &&
			(bce_sc->bce_phy_flags & BCE_PHY_SERDES_FLAG)) {

			/* Select the SerDes Digital block of the AN MMD. */
			FUNC5(sc, BRGPHY_BLOCK_ADDR, BRGPHY_BLOCK_ADDR_SERDES_DIG);
			val = FUNC4(sc, BRGPHY_SERDES_DIG_1000X_CTL1);
			val &= ~BRGPHY_SD_DIG_1000X_CTL1_AUTODET;
			val |= BRGPHY_SD_DIG_1000X_CTL1_FIBER;
			FUNC5(sc, BRGPHY_SERDES_DIG_1000X_CTL1, val);

			/* Select the Over 1G block of the AN MMD. */
			FUNC5(sc, BRGPHY_BLOCK_ADDR, BRGPHY_BLOCK_ADDR_OVER_1G);

			/* Enable autoneg "Next Page" to advertise 2.5G support. */
			val = FUNC4(sc, BRGPHY_OVER_1G_UNFORMAT_PG1);
			if (bce_sc->bce_phy_flags & BCE_PHY_2_5G_CAPABLE_FLAG)
				val |= BRGPHY_5708S_ANEG_NXT_PG_XMIT1_25G;
			else
				val &= ~BRGPHY_5708S_ANEG_NXT_PG_XMIT1_25G;
			FUNC5(sc, BRGPHY_OVER_1G_UNFORMAT_PG1, val);

			/* Select the Multi-Rate Backplane Ethernet block of the AN MMD. */
			FUNC5(sc, BRGPHY_BLOCK_ADDR, BRGPHY_BLOCK_ADDR_MRBE);

			/* Enable MRBE speed autoneg. */
			val = FUNC4(sc, BRGPHY_MRBE_MSG_PG5_NP);
			val |= BRGPHY_MRBE_MSG_PG5_NP_MBRE |
			    BRGPHY_MRBE_MSG_PG5_NP_T2;
			FUNC5(sc, BRGPHY_MRBE_MSG_PG5_NP, val);

			/* Select the Clause 73 User B0 block of the AN MMD. */
			FUNC5(sc, BRGPHY_BLOCK_ADDR, BRGPHY_BLOCK_ADDR_CL73_USER_B0);

			/* Enable MRBE speed autoneg. */
			FUNC5(sc, BRGPHY_CL73_USER_B0_MBRE_CTL1,
			    BRGPHY_CL73_USER_B0_MBRE_CTL1_NP_AFT_BP |
			    BRGPHY_CL73_USER_B0_MBRE_CTL1_STA_MGR |
			    BRGPHY_CL73_USER_B0_MBRE_CTL1_ANEG);

			/* Restore IEEE0 block (assumed in all brgphy(4) code). */
			FUNC5(sc, BRGPHY_BLOCK_ADDR, BRGPHY_BLOCK_ADDR_COMBO_IEEE0);
        } else if (FUNC1(bce_sc) == BCE_CHIP_NUM_5709) {
			if ((FUNC2(bce_sc) == BCE_CHIP_REV_Ax) ||
				(FUNC2(bce_sc) == BCE_CHIP_REV_Bx))
				FUNC15(sc);

			FUNC17(sc, FUNC18(ifp));
			FUNC9(sc);
		} else {
			FUNC13(sc);
			FUNC17(sc, FUNC18(ifp));
			FUNC9(sc);
		}
	}
}