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
typedef  unsigned long uint64_t ;
struct lmac {int lmacid; struct bgx* bgx; } ;
struct bgx {int lmac_type; int /*<<< orphan*/  dev; scalar_t__ use_training; } ;

/* Variables and functions */
 int BGX_MODE_10G_KR ; 
 int BGX_MODE_40G_KR ; 
 int BGX_MODE_XFI ; 
 int BGX_MODE_XLAUI ; 
 int /*<<< orphan*/  BGX_SMUX_CTL ; 
 int /*<<< orphan*/  BGX_SMUX_RX_CTL ; 
 int /*<<< orphan*/  BGX_SPUX_BR_PMD_CRTL ; 
 int /*<<< orphan*/  BGX_SPUX_BR_STATUS1 ; 
 int /*<<< orphan*/  BGX_SPUX_BX_STATUS ; 
 int /*<<< orphan*/  BGX_SPUX_CONTROL1 ; 
 int /*<<< orphan*/  BGX_SPUX_INT ; 
 int /*<<< orphan*/  BGX_SPUX_MISC_CONTROL ; 
 int /*<<< orphan*/  BGX_SPUX_STATUS1 ; 
 int /*<<< orphan*/  BGX_SPUX_STATUS2 ; 
 int ENXIO ; 
 int /*<<< orphan*/  FALSE ; 
 int SMU_CTL_RX_IDLE ; 
 int SMU_CTL_TX_IDLE ; 
 int SMU_RX_CTL_STATUS ; 
 int SPU_BR_STATUS_BLK_LOCK ; 
 int SPU_BX_STATUS_RX_ALIGN ; 
 int SPU_CTL_RESET ; 
 unsigned long SPU_MISC_CTL_RX_DIS ; 
 int SPU_STATUS1_RCV_LNK ; 
 int SPU_STATUS2_RCVFLT ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (struct bgx*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bgx*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct bgx*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bgx*,int,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC5(struct lmac *lmac)
{
	struct bgx *bgx = lmac->bgx;
	int lmacid = lmac->lmacid;
	int lmac_type = bgx->lmac_type;
	uint64_t cfg;

	FUNC1(bgx, lmacid, BGX_SPUX_MISC_CONTROL, SPU_MISC_CTL_RX_DIS);
	if (bgx->use_training) {
		cfg = FUNC2(bgx, lmacid, BGX_SPUX_INT);
		if ((cfg & (1UL << 13)) == 0) {
			cfg = (1UL << 13) | (1UL << 14);
			FUNC3(bgx, lmacid, BGX_SPUX_INT, cfg);
			cfg = FUNC2(bgx, lmacid, BGX_SPUX_BR_PMD_CRTL);
			cfg |= (1UL << 0);
			FUNC3(bgx, lmacid, BGX_SPUX_BR_PMD_CRTL, cfg);
			return (ENXIO);
		}
	}

	/* wait for PCS to come out of reset */
	if (FUNC0(bgx, lmacid, BGX_SPUX_CONTROL1,
	    SPU_CTL_RESET, TRUE) != 0) {
		FUNC4(bgx->dev, "BGX SPU reset not completed\n");
		return (ENXIO);
	}

	if ((lmac_type == BGX_MODE_10G_KR) || (lmac_type == BGX_MODE_XFI) ||
	    (lmac_type == BGX_MODE_40G_KR) || (lmac_type == BGX_MODE_XLAUI)) {
		if (FUNC0(bgx, lmacid, BGX_SPUX_BR_STATUS1,
		    SPU_BR_STATUS_BLK_LOCK, FALSE)) {
			FUNC4(bgx->dev,
			    "SPU_BR_STATUS_BLK_LOCK not completed\n");
			return (ENXIO);
		}
	} else {
		if (FUNC0(bgx, lmacid, BGX_SPUX_BX_STATUS,
		    SPU_BX_STATUS_RX_ALIGN, FALSE) != 0) {
			FUNC4(bgx->dev,
			    "SPU_BX_STATUS_RX_ALIGN not completed\n");
			return (ENXIO);
		}
	}

	/* Clear rcvflt bit (latching high) and read it back */
	FUNC1(bgx, lmacid, BGX_SPUX_STATUS2, SPU_STATUS2_RCVFLT);
	if (FUNC2(bgx, lmacid, BGX_SPUX_STATUS2) & SPU_STATUS2_RCVFLT) {
		FUNC4(bgx->dev, "Receive fault, retry training\n");
		if (bgx->use_training) {
			cfg = FUNC2(bgx, lmacid, BGX_SPUX_INT);
			if ((cfg & (1UL << 13)) == 0) {
				cfg = (1UL << 13) | (1UL << 14);
				FUNC3(bgx, lmacid, BGX_SPUX_INT, cfg);
				cfg = FUNC2(bgx, lmacid,
				    BGX_SPUX_BR_PMD_CRTL);
				cfg |= (1UL << 0);
				FUNC3(bgx, lmacid,
				    BGX_SPUX_BR_PMD_CRTL, cfg);
				return (ENXIO);
			}
		}
		return (ENXIO);
	}

	/* Wait for MAC RX to be ready */
	if (FUNC0(bgx, lmacid, BGX_SMUX_RX_CTL,
	    SMU_RX_CTL_STATUS, TRUE) != 0) {
		FUNC4(bgx->dev, "SMU RX link not okay\n");
		return (ENXIO);
	}

	/* Wait for BGX RX to be idle */
	if (FUNC0(bgx, lmacid, BGX_SMUX_CTL,
	    SMU_CTL_RX_IDLE, FALSE) != 0) {
		FUNC4(bgx->dev, "SMU RX not idle\n");
		return (ENXIO);
	}

	/* Wait for BGX TX to be idle */
	if (FUNC0(bgx, lmacid, BGX_SMUX_CTL,
	    SMU_CTL_TX_IDLE, FALSE) != 0) {
		FUNC4(bgx->dev, "SMU TX not idle\n");
		return (ENXIO);
	}

	if ((FUNC2(bgx, lmacid, BGX_SPUX_STATUS2) &
	    SPU_STATUS2_RCVFLT) != 0) {
		FUNC4(bgx->dev, "Receive fault\n");
		return (ENXIO);
	}

	/* Receive link is latching low. Force it high and verify it */
	FUNC1(bgx, lmacid, BGX_SPUX_STATUS1, SPU_STATUS1_RCV_LNK);
	if (FUNC0(bgx, lmacid, BGX_SPUX_STATUS1,
	    SPU_STATUS1_RCV_LNK, FALSE) != 0) {
		FUNC4(bgx->dev, "SPU receive link down\n");
		return (ENXIO);
	}

	cfg = FUNC2(bgx, lmacid, BGX_SPUX_MISC_CONTROL);
	cfg &= ~SPU_MISC_CTL_RX_DIS;
	FUNC3(bgx, lmacid, BGX_SPUX_MISC_CONTROL, cfg);
	return (0);
}