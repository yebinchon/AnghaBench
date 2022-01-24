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
typedef  size_t uint16_t ;
struct ath_hal_5416 {int /*<<< orphan*/ * ah_keytype; } ;
struct ath_hal {int dummy; } ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 struct ath_hal_5416* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AH_FALSE ; 
 int /*<<< orphan*/  AH_TRUE ; 
 size_t HAL_CIPHER_CLR ; 
 scalar_t__ FUNC1 (struct ath_hal*,size_t) ; 
 int /*<<< orphan*/ * keyType ; 

HAL_BOOL
FUNC2(struct ath_hal *ah, uint16_t entry)
{
	struct ath_hal_5416 *ahp = FUNC0(ah);

	if (FUNC1(ah, entry)) {
		ahp->ah_keytype[entry] = keyType[HAL_CIPHER_CLR];
		return AH_TRUE;
	} else
		return AH_FALSE;
}