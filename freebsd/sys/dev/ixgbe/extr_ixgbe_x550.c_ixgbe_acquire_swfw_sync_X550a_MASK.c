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
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ id; } ;
struct ixgbe_hw {TYPE_1__ phy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int FW_PHY_TOKEN_RETRIES ; 
 scalar_t__ IXGBE_ERR_TOKEN_RETRY ; 
 int IXGBE_GSSR_TOKEN_SM ; 
 scalar_t__ IXGBE_SUCCESS ; 
 scalar_t__ FUNC2 (struct ixgbe_hw*,int) ; 
 scalar_t__ FUNC3 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,int) ; 

__attribute__((used)) static s32 FUNC5(struct ixgbe_hw *hw, u32 mask)
{
	u32 hmask = mask & ~IXGBE_GSSR_TOKEN_SM;
	int retries = FW_PHY_TOKEN_RETRIES;
	s32 status = IXGBE_SUCCESS;

	FUNC0("ixgbe_acquire_swfw_sync_X550a");

	while (--retries) {
		status = IXGBE_SUCCESS;
		if (hmask)
			status = FUNC2(hw, hmask);
		if (status) {
			FUNC1("Could not acquire SWFW semaphore, Status = %d\n",
				  status);
			return status;
		}
		if (!(mask & IXGBE_GSSR_TOKEN_SM))
			return IXGBE_SUCCESS;

		status = FUNC3(hw);
		if (status == IXGBE_ERR_TOKEN_RETRY)
			FUNC1("Could not acquire PHY token, Status = %d\n",
				  status);

		if (status == IXGBE_SUCCESS)
			return IXGBE_SUCCESS;

		if (hmask)
			FUNC4(hw, hmask);

		if (status != IXGBE_ERR_TOKEN_RETRY) {
			FUNC1("Unable to retry acquiring the PHY token, Status = %d\n",
				  status);
			return status;
		}
	}

	FUNC1("Semaphore acquisition retries failed!: PHY ID = 0x%08X\n",
		  hw->phy.id);
	return status;
}