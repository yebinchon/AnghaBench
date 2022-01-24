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
typedef  scalar_t__ uint32_t ;
struct ath_hal_5212 {scalar_t__ ah_txTrigLev; scalar_t__ ah_maxTxTrigLev; int ah_maskReg; } ;
struct ath_hal {int dummy; } ;
typedef  int HAL_INT ;
typedef  int HAL_BOOL ;

/* Variables and functions */
 struct ath_hal_5212* FUNC0 (struct ath_hal*) ; 
 int AH_FALSE ; 
 scalar_t__ AR_FTRIG ; 
 int /*<<< orphan*/  AR_TXCFG ; 
 int HAL_INT_GLOBAL ; 
 scalar_t__ MIN_TX_FIFO_THRESHOLD ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 int FUNC5 (struct ath_hal*,int) ; 

HAL_BOOL
FUNC6(struct ath_hal *ah, HAL_BOOL bIncTrigLevel)
{
	struct ath_hal_5212 *ahp = FUNC0(ah);
	uint32_t txcfg, curLevel, newLevel;
	HAL_INT omask;

	if (ahp->ah_txTrigLev >= ahp->ah_maxTxTrigLev)
		return AH_FALSE;

	/*
	 * Disable interrupts while futzing with the fifo level.
	 */
	omask = FUNC5(ah, ahp->ah_maskReg &~ HAL_INT_GLOBAL);

	txcfg = FUNC2(ah, AR_TXCFG);
	curLevel = FUNC1(txcfg, AR_FTRIG);
	newLevel = curLevel;
	if (bIncTrigLevel) {		/* increase the trigger level */
		if (curLevel < ahp->ah_maxTxTrigLev)
			newLevel++;
	} else if (curLevel > MIN_TX_FIFO_THRESHOLD)
		newLevel--;
	if (newLevel != curLevel)
		/* Update the trigger level */
		FUNC3(ah, AR_TXCFG,
			(txcfg &~ AR_FTRIG) | FUNC4(newLevel, AR_FTRIG));

	ahp->ah_txTrigLev = newLevel;

	/* re-enable chip interrupts */
	FUNC5(ah, omask);

	return (newLevel != curLevel);
}