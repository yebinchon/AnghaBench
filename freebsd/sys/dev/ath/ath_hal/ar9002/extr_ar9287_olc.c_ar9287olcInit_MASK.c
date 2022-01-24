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
struct ath_hal {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR9287_AN_TXPC0 ; 
 int /*<<< orphan*/  AR9287_AN_TXPC0_TXPCMODE ; 
 int /*<<< orphan*/  AR9287_AN_TXPC0_TXPCMODE_TEMPSENSE ; 
 int /*<<< orphan*/  AR_PHY_TX_PWRCTRL9 ; 
 int /*<<< orphan*/  AR_PHY_TX_PWRCTRL9_RES_DC_REMOVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct ath_hal *ah)
{
	FUNC2(ah, AR_PHY_TX_PWRCTRL9,
	    AR_PHY_TX_PWRCTRL9_RES_DC_REMOVAL);
	FUNC0(ah, AR9287_AN_TXPC0,
	    AR9287_AN_TXPC0_TXPCMODE,
	    AR9287_AN_TXPC0_TXPCMODE_TEMPSENSE);
	FUNC1(100);
}