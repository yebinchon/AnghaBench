#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ah_currentRD; int /*<<< orphan*/  ah_caps; } ;
typedef  int /*<<< orphan*/  HAL_STATUS ;
typedef  int HAL_CAPABILITY_TYPE ;
typedef  int /*<<< orphan*/  HAL_CAPABILITIES ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct ath_hal*) ; 
#define  HAL_CAP_REG_DMN 128 
 int /*<<< orphan*/  HAL_EINVAL ; 
 int /*<<< orphan*/  HAL_OK ; 

HAL_STATUS
FUNC1(struct ath_hal *ah, HAL_CAPABILITY_TYPE type,
	uint32_t capability, uint32_t *result)
{
	const HAL_CAPABILITIES *pCap = &FUNC0(ah)->ah_caps;

	switch (type) {
	case HAL_CAP_REG_DMN:		/* regulatory domain */
		*result = FUNC0(ah)->ah_currentRD;
		return HAL_OK;
	default:
		return HAL_EINVAL;
	}
}