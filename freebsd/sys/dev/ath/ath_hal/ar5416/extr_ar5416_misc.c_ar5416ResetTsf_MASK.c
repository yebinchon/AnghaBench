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
struct ath_hal {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_RESET_TSF ; 
 int /*<<< orphan*/  AR_RESET_TSF_ONCE ; 
 int /*<<< orphan*/  AR_SLP32_MODE ; 
 int AR_SLP32_TSF_WRITE_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct ath_hal *ah)
{
	uint32_t v;
	int i;

	for (i = 0; i < 10; i++) {
		v = FUNC1(ah, AR_SLP32_MODE);
		if ((v & AR_SLP32_TSF_WRITE_STATUS) == 0)
			break;
		FUNC0(10);
	}
	FUNC2(ah, AR_RESET_TSF, AR_RESET_TSF_ONCE);	
}