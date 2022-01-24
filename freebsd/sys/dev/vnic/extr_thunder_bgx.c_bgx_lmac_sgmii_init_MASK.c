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
struct bgx {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BGX_CMRX_CFG ; 
 int /*<<< orphan*/  BGX_GMP_GMI_RXX_JABBER ; 
 int /*<<< orphan*/  BGX_GMP_GMI_TXX_APPEND ; 
 int /*<<< orphan*/  BGX_GMP_GMI_TXX_SGMII_CTL ; 
 int /*<<< orphan*/  BGX_GMP_GMI_TXX_THRESH ; 
 int /*<<< orphan*/  BGX_GMP_PCS_MRX_CTL ; 
 int /*<<< orphan*/  BGX_GMP_PCS_MRX_STATUS ; 
 int CMR_EN ; 
 int ENXIO ; 
 int /*<<< orphan*/  FALSE ; 
 int MAX_FRAME_SIZE ; 
 int PCS_MRX_CTL_AN_EN ; 
 int PCS_MRX_CTL_PWR_DN ; 
 int PCS_MRX_CTL_RESET ; 
 int PCS_MRX_CTL_RST_AN ; 
 int PCS_MRX_STATUS_AN_CPT ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (struct bgx*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bgx*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct bgx*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bgx*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC5(struct bgx *bgx, int lmacid)
{
	uint64_t cfg;

	FUNC1(bgx, lmacid, BGX_GMP_GMI_TXX_THRESH, 0x30);
	/* max packet size */
	FUNC1(bgx, lmacid, BGX_GMP_GMI_RXX_JABBER, MAX_FRAME_SIZE);

	/* Disable frame alignment if using preamble */
	cfg = FUNC2(bgx, lmacid, BGX_GMP_GMI_TXX_APPEND);
	if (cfg & 1)
		FUNC3(bgx, lmacid, BGX_GMP_GMI_TXX_SGMII_CTL, 0);

	/* Enable lmac */
	FUNC1(bgx, lmacid, BGX_CMRX_CFG, CMR_EN);

	/* PCS reset */
	FUNC1(bgx, lmacid, BGX_GMP_PCS_MRX_CTL, PCS_MRX_CTL_RESET);
	if (FUNC0(bgx, lmacid, BGX_GMP_PCS_MRX_CTL,
	    PCS_MRX_CTL_RESET, TRUE) != 0) {
		FUNC4(bgx->dev, "BGX PCS reset not completed\n");
		return (ENXIO);
	}

	/* power down, reset autoneg, autoneg enable */
	cfg = FUNC2(bgx, lmacid, BGX_GMP_PCS_MRX_CTL);
	cfg &= ~PCS_MRX_CTL_PWR_DN;
	cfg |= (PCS_MRX_CTL_RST_AN | PCS_MRX_CTL_AN_EN);
	FUNC3(bgx, lmacid, BGX_GMP_PCS_MRX_CTL, cfg);

	if (FUNC0(bgx, lmacid, BGX_GMP_PCS_MRX_STATUS,
	    PCS_MRX_STATUS_AN_CPT, FALSE) != 0) {
		FUNC4(bgx->dev, "BGX AN_CPT not completed\n");
		return (ENXIO);
	}

	return (0);
}