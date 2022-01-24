#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {scalar_t__ halNumGpioPins; } ;
struct TYPE_4__ {TYPE_1__ ah_caps; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR9285_GPIO_IN_VAL ; 
 int /*<<< orphan*/  AR9287_GPIO_IN_VAL ; 
 int /*<<< orphan*/  AR928X_GPIO_IN_VAL ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  AR_GPIO_IN_OUT ; 
 int /*<<< orphan*/  AR_GPIO_IN_VAL ; 
 scalar_t__ FUNC2 (struct ath_hal*) ; 
 scalar_t__ FUNC3 (struct ath_hal*) ; 
 scalar_t__ FUNC4 (struct ath_hal*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hal*,int /*<<< orphan*/ ) ; 

uint32_t
FUNC7(struct ath_hal *ah, uint32_t gpio)
{
	uint32_t bits;

	if (gpio >= FUNC0(ah)->ah_caps.halNumGpioPins)
		return 0xffffffff;
	/*
	 * Read output value for all gpio's, shift it,
	 * and verify whether the specific bit is set.
	 */
	if (FUNC3(ah))
		bits = FUNC5(FUNC6(ah, AR_GPIO_IN_OUT), AR9287_GPIO_IN_VAL);
	if (FUNC2(ah))
		bits = FUNC5(FUNC6(ah, AR_GPIO_IN_OUT), AR9285_GPIO_IN_VAL);
	else if (FUNC4(ah))
		bits = FUNC5(FUNC6(ah, AR_GPIO_IN_OUT), AR928X_GPIO_IN_VAL);
	else
		bits = FUNC5(FUNC6(ah, AR_GPIO_IN_OUT), AR_GPIO_IN_VAL);
	return ((bits & FUNC1(gpio)) != 0);
}