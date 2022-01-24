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
struct ath_hal_private {int /*<<< orphan*/  ah_opmode; int /*<<< orphan*/  ah_curchan; } ;
struct ath_hal {int dummy; } ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AH_MARK_RX_CTL ; 
 int /*<<< orphan*/  AH_MARK_RX_CTL_PCU_START ; 
 struct ath_hal_private* FUNC0 (struct ath_hal*) ; 
 int AR_DIAG_RX_DIS ; 
 int /*<<< orphan*/  AR_DIAG_SW ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*) ; 

void
FUNC6(struct ath_hal *ah, HAL_BOOL is_scanning)
{
	struct ath_hal_private *ahp = FUNC0(ah);

	FUNC1(ah, AH_MARK_RX_CTL, AH_MARK_RX_CTL_PCU_START);
	FUNC3(ah, AR_DIAG_SW,
		FUNC2(ah, AR_DIAG_SW) &~ AR_DIAG_RX_DIS);
	FUNC5(ah);
	/* NB: restore current settings if we're not scanning */
	FUNC4(ah, ahp->ah_curchan, ahp->ah_opmode, !is_scanning);
}