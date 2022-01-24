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
struct ath_hal_5416 {int /*<<< orphan*/  ah_btCoexMode; } ;
struct ath_hal {int dummy; } ;

/* Variables and functions */
 struct ath_hal_5416* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_BT_QCU_THRESH ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

void
FUNC2(struct ath_hal *ah, int qnum)
{
	struct ath_hal_5416 *ahp = FUNC0(ah);

	ahp->ah_btCoexMode |= FUNC1(qnum, AR_BT_QCU_THRESH);
}