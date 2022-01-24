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
typedef  int u_int32_t ;
struct ath_hal_5416 {int /*<<< orphan*/  ah_btCoexFlag; } ;
struct ath_hal {int dummy; } ;

/* Variables and functions */
 struct ath_hal_5416* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*) ; 
#define  HAL_BT_COEX_ANTENNA_DIVERSITY 128 
 int /*<<< orphan*/  HAL_BT_COEX_FLAG_ANT_DIV_ALLOW ; 
 int /*<<< orphan*/  HAL_BT_COEX_FLAG_ANT_DIV_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*) ; 

void
FUNC4(struct ath_hal *ah, u_int32_t type, u_int32_t value)
{
	struct ath_hal_5416 *ahp = FUNC0(ah);

	switch (type) {
	case HAL_BT_COEX_ANTENNA_DIVERSITY:
		if (FUNC1(ah)) {
			ahp->ah_btCoexFlag |= HAL_BT_COEX_FLAG_ANT_DIV_ALLOW;
			if (value)
				ahp->ah_btCoexFlag |=
				    HAL_BT_COEX_FLAG_ANT_DIV_ENABLE;
			else
				ahp->ah_btCoexFlag &=
				    ~HAL_BT_COEX_FLAG_ANT_DIV_ENABLE;
			FUNC3(ah);
		}
		break;
	default:
		FUNC2(ah, type, value);
		break;
	}
}