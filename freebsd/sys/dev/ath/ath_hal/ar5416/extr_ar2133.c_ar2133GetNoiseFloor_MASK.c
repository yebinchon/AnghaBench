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
struct ath_hal_5416 {int ah_rx_chainmask; } ;
struct ath_hal {int dummy; } ;
typedef  int int16_t ;

/* Variables and functions */
 struct ath_hal_5416* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_PHY_CCA ; 
 int /*<<< orphan*/  AR_PHY_CH1_CCA ; 
 int /*<<< orphan*/  AR_PHY_CH1_EXT_CCA ; 
 int /*<<< orphan*/  AR_PHY_CH1_EXT_MINCCA_PWR ; 
 int /*<<< orphan*/  AR_PHY_CH1_MINCCA_PWR ; 
 int /*<<< orphan*/  AR_PHY_CH2_CCA ; 
 int /*<<< orphan*/  AR_PHY_CH2_EXT_CCA ; 
 int /*<<< orphan*/  AR_PHY_CH2_EXT_MINCCA_PWR ; 
 int /*<<< orphan*/  AR_PHY_CH2_MINCCA_PWR ; 
 int /*<<< orphan*/  AR_PHY_EXT_CCA ; 
 int /*<<< orphan*/  AR_PHY_EXT_MINCCA_PWR ; 
 int /*<<< orphan*/  AR_PHY_MINCCA_PWR ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  HAL_DEBUG_NFCAL ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void 
FUNC4(struct ath_hal *ah, int16_t nfarray[])
{
	struct ath_hal_5416 *ahp = FUNC0(ah);
	int16_t nf;

	/*
	 * Blank nf array - some chips may only
	 * have one or two RX chainmasks enabled.
	 */
	nfarray[0] = nfarray[1] = nfarray[2] = 0;
	nfarray[3] = nfarray[4] = nfarray[5] = 0;

	switch (ahp->ah_rx_chainmask) {
        case 0x7:
		nf = FUNC2(FUNC3(ah, AR_PHY_CH2_CCA), AR_PHY_CH2_MINCCA_PWR);
		if (nf & 0x100)
			nf = 0 - ((nf ^ 0x1ff) + 1);
		FUNC1(ah, HAL_DEBUG_NFCAL,
		    "NF calibrated [ctl] [chain 2] is %d\n", nf);
		nfarray[2] = nf;

		nf = FUNC2(FUNC3(ah, AR_PHY_CH2_EXT_CCA), AR_PHY_CH2_EXT_MINCCA_PWR);
		if (nf & 0x100)
			nf = 0 - ((nf ^ 0x1ff) + 1);
		FUNC1(ah, HAL_DEBUG_NFCAL,
		    "NF calibrated [ext] [chain 2] is %d\n", nf);
		nfarray[5] = nf;
		/* fall thru... */
        case 0x3:
        case 0x5:
		nf = FUNC2(FUNC3(ah, AR_PHY_CH1_CCA), AR_PHY_CH1_MINCCA_PWR);
		if (nf & 0x100)
			nf = 0 - ((nf ^ 0x1ff) + 1);
		FUNC1(ah, HAL_DEBUG_NFCAL,
		    "NF calibrated [ctl] [chain 1] is %d\n", nf);
		nfarray[1] = nf;


		nf = FUNC2(FUNC3(ah, AR_PHY_CH1_EXT_CCA), AR_PHY_CH1_EXT_MINCCA_PWR);
		if (nf & 0x100)
			nf = 0 - ((nf ^ 0x1ff) + 1);
		FUNC1(ah, HAL_DEBUG_NFCAL,
		    "NF calibrated [ext] [chain 1] is %d\n", nf);
		nfarray[4] = nf;
		/* fall thru... */
        case 0x1:
		nf = FUNC2(FUNC3(ah, AR_PHY_CCA), AR_PHY_MINCCA_PWR);
		if (nf & 0x100)
			nf = 0 - ((nf ^ 0x1ff) + 1);
		FUNC1(ah, HAL_DEBUG_NFCAL,
		    "NF calibrated [ctl] [chain 0] is %d\n", nf);
		nfarray[0] = nf;

		nf = FUNC2(FUNC3(ah, AR_PHY_EXT_CCA), AR_PHY_EXT_MINCCA_PWR);
		if (nf & 0x100)
			nf = 0 - ((nf ^ 0x1ff) + 1);
		FUNC1(ah, HAL_DEBUG_NFCAL,
		    "NF calibrated [ext] [chain 0] is %d\n", nf);
		nfarray[3] = nf;

		break;
	}
}