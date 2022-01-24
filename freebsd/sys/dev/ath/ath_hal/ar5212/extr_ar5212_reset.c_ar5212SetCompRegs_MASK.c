#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ath_hal_5212 {int* ah_decompMask; } ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  halCompressSupport; } ;
struct TYPE_4__ {TYPE_1__ ah_caps; } ;

/* Variables and functions */
 struct ath_hal_5212* FUNC0 (struct ath_hal*) ; 
 TYPE_2__* FUNC1 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_CCFG ; 
 int AR_CCFG_MIB_INT_EN ; 
 int AR_CCFG_WIN_M ; 
 int /*<<< orphan*/  AR_CCUCFG ; 
 int AR_CCUCFG_CATCHUP_EN ; 
 int AR_CCUCFG_RESET_VAL ; 
 int AR_COMPRESSION_WINDOW_SIZE ; 
 int /*<<< orphan*/  AR_CPCOVF ; 
 int /*<<< orphan*/  AR_DCCFG ; 
 int /*<<< orphan*/  AR_DCM_A ; 
 int /*<<< orphan*/  AR_DCM_D ; 
 int HAL_DECOMP_MASK_SIZE ; 
 int FUNC2 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 

void
FUNC4(struct ath_hal *ah)
{
	struct ath_hal_5212 *ahp = FUNC0(ah);
	int i;

        /* Check if h/w supports compression */
	if (!FUNC1(ah)->ah_caps.halCompressSupport)
		return;

	FUNC3(ah, AR_DCCFG, 1);

	FUNC3(ah, AR_CCFG,
		(AR_COMPRESSION_WINDOW_SIZE >> 8) & AR_CCFG_WIN_M);

	FUNC3(ah, AR_CCFG,
		FUNC2(ah, AR_CCFG) | AR_CCFG_MIB_INT_EN);
	FUNC3(ah, AR_CCUCFG,
		AR_CCUCFG_RESET_VAL | AR_CCUCFG_CATCHUP_EN);

	FUNC3(ah, AR_CPCOVF, 0);

	/* reset decompression mask */
	for (i = 0; i < HAL_DECOMP_MASK_SIZE; i++) {
		FUNC3(ah, AR_DCM_A, i);
		FUNC3(ah, AR_DCM_D, ahp->ah_decompMask[i]);
	}
}