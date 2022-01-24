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
 int /*<<< orphan*/  AH_MARK_RX_CTL ; 
 int /*<<< orphan*/  AH_MARK_RX_CTL_PCU_STOP ; 
 int AR_DIAG_RX_DIS ; 
 int /*<<< orphan*/  AR_DIAG_SW ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*) ; 

void
FUNC4(struct ath_hal *ah)
{
	FUNC0(ah, AH_MARK_RX_CTL, AH_MARK_RX_CTL_PCU_STOP);
	FUNC2(ah, AR_DIAG_SW,
		FUNC1(ah, AR_DIAG_SW) | AR_DIAG_RX_DIS);
	FUNC3(ah);
}