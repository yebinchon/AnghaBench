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
typedef  scalar_t__ uint16_t ;
typedef  scalar_t__ int16_t ;
typedef  scalar_t__ HAL_BOOL ;

/* Variables and functions */
 scalar_t__ EEP_SCALE ; 

uint16_t
FUNC0(uint16_t target,
	uint16_t srcLeft, uint16_t srcRight,
	uint16_t targetLeft, uint16_t targetRight,
	HAL_BOOL scaleUp)
{
	uint16_t rv;
	int16_t lRatio;
	uint16_t scaleValue = EEP_SCALE;

	/* to get an accurate ratio, always scale, if want to scale, then don't scale back down */
	if ((targetLeft * targetRight) == 0)
		return 0;
	if (scaleUp)
		scaleValue = 1;

	if (srcRight != srcLeft) {
		/*
		 * Note the ratio always need to be scaled,
		 * since it will be a fraction.
		 */
		lRatio = (target - srcLeft) * EEP_SCALE / (srcRight - srcLeft);
		if (lRatio < 0) {
		    /* Return as Left target if value would be negative */
		    rv = targetLeft * (scaleUp ? EEP_SCALE : 1);
		} else if (lRatio > EEP_SCALE) {
		    /* Return as Right target if Ratio is greater than 100% (SCALE) */
		    rv = targetRight * (scaleUp ? EEP_SCALE : 1);
		} else {
			rv = (lRatio * targetRight + (EEP_SCALE - lRatio) *
					targetLeft) / scaleValue;
		}
	} else {
		rv = targetLeft;
		if (scaleUp)
			rv *= EEP_SCALE;
	}
	return rv;
}