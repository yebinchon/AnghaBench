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
typedef  int uint32_t ;
struct ath_hal_5416 {int /*<<< orphan*/  ah_hangs; } ;
struct ath_hal {int dummy; } ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 struct ath_hal_5416* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AH_FALSE ; 
 int /*<<< orphan*/  AH_TRUE ; 
 int HAL_BB_HANGS ; 
#define  HAL_DIAG_CHECK_HANGS 129 
#define  HAL_DIAG_EEPROM 128 
 int HAL_MAC_HANGS ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int,void const*,int,void**,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int,void const*,int,void**,int*) ; 
 scalar_t__ FUNC5 (struct ath_hal*,int,void const*,int,void**,int*) ; 

HAL_BOOL
FUNC6(struct ath_hal *ah, int request,
	const void *args, uint32_t argsize,
	void **result, uint32_t *resultsize)
{
	struct ath_hal_5416 *ahp = FUNC0(ah);
	int hangs;

	if (FUNC5(ah, request, args, argsize, result, resultsize))
		return AH_TRUE;
	switch (request) {
	case HAL_DIAG_EEPROM:
		return FUNC4(ah, request,
		    args, argsize, result, resultsize);
	case HAL_DIAG_CHECK_HANGS:
		if (argsize != sizeof(int))
			return AH_FALSE;
		hangs = *(const int *) args;
		ahp->ah_hangs = 0;
		if (hangs & HAL_BB_HANGS)
			ahp->ah_hangs |= FUNC2(ah);
		/* NB: if BB is hung MAC will be hung too so skip check */
		if (ahp->ah_hangs == 0 && (hangs & HAL_MAC_HANGS))
			ahp->ah_hangs |= FUNC3(ah);
		*result = &ahp->ah_hangs;
		*resultsize = sizeof(ahp->ah_hangs);
		return AH_TRUE;
	}
	return FUNC1(ah, request,
	    args, argsize, result, resultsize);
}