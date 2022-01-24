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
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AH_TRUE ; 
 int /*<<< orphan*/  AR_GPIODO ; 
 int AR_NUM_GPIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 

HAL_BOOL
FUNC3(struct ath_hal *ah, uint32_t gpio, uint32_t val)
{
	uint32_t reg;

	FUNC0(gpio < AR_NUM_GPIO);

	reg =  FUNC1(ah, AR_GPIODO);
	reg &= ~(1 << gpio);
	reg |= (val&1) << gpio;

	FUNC2(ah, AR_GPIODO, reg);
	return AH_TRUE;
}