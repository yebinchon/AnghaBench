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
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AH_FALSE ; 
 int /*<<< orphan*/  AH_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*) ; 

HAL_BOOL
FUNC2(struct ath_hal *ah, int i)
{
	int j;
	if (i <= 0)
		i = 1;	  /* it should run at least once */
	for (j = 0; j < i; j++) {
		if (! FUNC1(ah))
			return AH_TRUE;
		FUNC0(10);
	}
	return AH_FALSE;
}