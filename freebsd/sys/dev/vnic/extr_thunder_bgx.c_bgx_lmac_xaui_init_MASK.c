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
typedef  int uint64_t ;
struct bgx {scalar_t__ lmac_type; scalar_t__ use_training; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BGX_CMRX_CFG ; 
 scalar_t__ BGX_MODE_10G_KR ; 
 scalar_t__ BGX_MODE_40G_KR ; 
 scalar_t__ BGX_MODE_RXAUI ; 
 int /*<<< orphan*/  BGX_SMUX_RX_INT ; 
 int /*<<< orphan*/  BGX_SMUX_RX_JABBER ; 
 int /*<<< orphan*/  BGX_SMUX_TX_APPEND ; 
 int /*<<< orphan*/  BGX_SMUX_TX_CTL ; 
 int /*<<< orphan*/  BGX_SMUX_TX_INT ; 
 int /*<<< orphan*/  BGX_SMUX_TX_THRESH ; 
 int /*<<< orphan*/  BGX_SPUX_AN_ADV ; 
 int /*<<< orphan*/  BGX_SPUX_AN_CONTROL ; 
 int /*<<< orphan*/  BGX_SPUX_BR_PMD_CRTL ; 
 int /*<<< orphan*/  BGX_SPUX_BR_PMD_LD_CUP ; 
 int /*<<< orphan*/  BGX_SPUX_BR_PMD_LD_REP ; 
 int /*<<< orphan*/  BGX_SPUX_BR_PMD_LP_CUP ; 
 int /*<<< orphan*/  BGX_SPUX_CONTROL1 ; 
 int /*<<< orphan*/  BGX_SPUX_FEC_CONTROL ; 
 int /*<<< orphan*/  BGX_SPUX_INT ; 
 int /*<<< orphan*/  BGX_SPUX_MISC_CONTROL ; 
 int /*<<< orphan*/  BGX_SPU_DBG_CONTROL ; 
 int CMR_EN ; 
 int ENXIO ; 
 int MAX_FRAME_SIZE ; 
 int SMU_TX_APPEND_FCS_D ; 
 int SMU_TX_CTL_DIC_EN ; 
 int SMU_TX_CTL_UNI_EN ; 
 int SPU_AN_CTL_AN_EN ; 
 int SPU_AN_CTL_XNP_EN ; 
 int SPU_CTL_LOW_POWER ; 
 int SPU_CTL_RESET ; 
 int SPU_DBG_CTL_AN_ARB_LINK_CHK_EN ; 
 int SPU_FEC_CTL_FEC_EN ; 
 int SPU_MISC_CTL_INTLV_RDISP ; 
 int SPU_MISC_CTL_RX_DIS ; 
 int SPU_PMD_CRTL_TRAIN_EN ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (struct bgx*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bgx*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct bgx*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bgx*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC5(struct bgx *bgx, int lmacid, int lmac_type)
{
	uint64_t cfg;

	/* Reset SPU */
	FUNC1(bgx, lmacid, BGX_SPUX_CONTROL1, SPU_CTL_RESET);
	if (FUNC0(bgx, lmacid, BGX_SPUX_CONTROL1,
	    SPU_CTL_RESET, TRUE) != 0) {
		FUNC4(bgx->dev, "BGX SPU reset not completed\n");
		return (ENXIO);
	}

	/* Disable LMAC */
	cfg = FUNC2(bgx, lmacid, BGX_CMRX_CFG);
	cfg &= ~CMR_EN;
	FUNC3(bgx, lmacid, BGX_CMRX_CFG, cfg);

	FUNC1(bgx, lmacid, BGX_SPUX_CONTROL1, SPU_CTL_LOW_POWER);
	/* Set interleaved running disparity for RXAUI */
	if (bgx->lmac_type != BGX_MODE_RXAUI) {
		FUNC1(bgx, lmacid,
		    BGX_SPUX_MISC_CONTROL, SPU_MISC_CTL_RX_DIS);
	} else {
		FUNC1(bgx, lmacid, BGX_SPUX_MISC_CONTROL,
		    SPU_MISC_CTL_RX_DIS | SPU_MISC_CTL_INTLV_RDISP);
	}

	/* clear all interrupts */
	cfg = FUNC2(bgx, lmacid, BGX_SMUX_RX_INT);
	FUNC3(bgx, lmacid, BGX_SMUX_RX_INT, cfg);
	cfg = FUNC2(bgx, lmacid, BGX_SMUX_TX_INT);
	FUNC3(bgx, lmacid, BGX_SMUX_TX_INT, cfg);
	cfg = FUNC2(bgx, lmacid, BGX_SPUX_INT);
	FUNC3(bgx, lmacid, BGX_SPUX_INT, cfg);

	if (bgx->use_training) {
		FUNC3(bgx, lmacid, BGX_SPUX_BR_PMD_LP_CUP, 0x00);
		FUNC3(bgx, lmacid, BGX_SPUX_BR_PMD_LD_CUP, 0x00);
		FUNC3(bgx, lmacid, BGX_SPUX_BR_PMD_LD_REP, 0x00);
		/* training enable */
		FUNC1(bgx, lmacid, BGX_SPUX_BR_PMD_CRTL,
		    SPU_PMD_CRTL_TRAIN_EN);
	}

	/* Append FCS to each packet */
	FUNC1(bgx, lmacid, BGX_SMUX_TX_APPEND, SMU_TX_APPEND_FCS_D);

	/* Disable forward error correction */
	cfg = FUNC2(bgx, lmacid, BGX_SPUX_FEC_CONTROL);
	cfg &= ~SPU_FEC_CTL_FEC_EN;
	FUNC3(bgx, lmacid, BGX_SPUX_FEC_CONTROL, cfg);

	/* Disable autoneg */
	cfg = FUNC2(bgx, lmacid, BGX_SPUX_AN_CONTROL);
	cfg = cfg & ~(SPU_AN_CTL_AN_EN | SPU_AN_CTL_XNP_EN);
	FUNC3(bgx, lmacid, BGX_SPUX_AN_CONTROL, cfg);

	cfg = FUNC2(bgx, lmacid, BGX_SPUX_AN_ADV);
	if (bgx->lmac_type == BGX_MODE_10G_KR)
		cfg |= (1 << 23);
	else if (bgx->lmac_type == BGX_MODE_40G_KR)
		cfg |= (1 << 24);
	else
		cfg &= ~((1 << 23) | (1 << 24));
	cfg = cfg & (~((1UL << 25) | (1UL << 22) | (1UL << 12)));
	FUNC3(bgx, lmacid, BGX_SPUX_AN_ADV, cfg);

	cfg = FUNC2(bgx, 0, BGX_SPU_DBG_CONTROL);
	cfg &= ~SPU_DBG_CTL_AN_ARB_LINK_CHK_EN;
	FUNC3(bgx, 0, BGX_SPU_DBG_CONTROL, cfg);

	/* Enable lmac */
	FUNC1(bgx, lmacid, BGX_CMRX_CFG, CMR_EN);

	cfg = FUNC2(bgx, lmacid, BGX_SPUX_CONTROL1);
	cfg &= ~SPU_CTL_LOW_POWER;
	FUNC3(bgx, lmacid, BGX_SPUX_CONTROL1, cfg);

	cfg = FUNC2(bgx, lmacid, BGX_SMUX_TX_CTL);
	cfg &= ~SMU_TX_CTL_UNI_EN;
	cfg |= SMU_TX_CTL_DIC_EN;
	FUNC3(bgx, lmacid, BGX_SMUX_TX_CTL, cfg);

	/* take lmac_count into account */
	FUNC1(bgx, lmacid, BGX_SMUX_TX_THRESH, (0x100 - 1));
	/* max packet size */
	FUNC1(bgx, lmacid, BGX_SMUX_RX_JABBER, MAX_FRAME_SIZE);

	return (0);
}