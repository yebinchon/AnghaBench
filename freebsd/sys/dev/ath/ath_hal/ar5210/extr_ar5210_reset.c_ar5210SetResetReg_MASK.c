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
typedef  int /*<<< orphan*/  u_int ;
struct ath_hal {int dummy; } ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AR_CFG ; 
 int AR_CFG_SWRD ; 
 int AR_CFG_SWTD ; 
 int /*<<< orphan*/  AR_RC ; 
 int AR_RC_RDMA ; 
 int AR_RC_RMAC ; 
 int AR_RC_RPCU ; 
 int AR_RC_RPHY ; 
 int INIT_CONFIG_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static HAL_BOOL
FUNC4(struct ath_hal *ah, uint32_t resetMask, u_int delay)
{
	uint32_t mask = resetMask ? resetMask : ~0;
	HAL_BOOL rt;

	FUNC1(ah, AR_RC, resetMask);
	/* need to wait at least 128 clocks when reseting PCI before read */
	FUNC0(delay);

	resetMask &= AR_RC_RPCU | AR_RC_RDMA | AR_RC_RPHY | AR_RC_RMAC;
	mask &= AR_RC_RPCU | AR_RC_RDMA | AR_RC_RPHY | AR_RC_RMAC;
	rt = FUNC2(ah, AR_RC, mask, resetMask);
        if ((resetMask & AR_RC_RMAC) == 0) {
		if (FUNC3()) {
			/*
			 * Set CFG, little-endian for descriptor accesses.
			 */
			mask = INIT_CONFIG_STATUS | AR_CFG_SWTD | AR_CFG_SWRD;
			FUNC1(ah, AR_CFG, mask);
		} else
			FUNC1(ah, AR_CFG, INIT_CONFIG_STATUS);
	}
	return rt;
}