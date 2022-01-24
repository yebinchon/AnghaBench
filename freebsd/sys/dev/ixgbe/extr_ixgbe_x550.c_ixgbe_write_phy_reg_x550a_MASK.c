#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_5__ {scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int) ;int /*<<< orphan*/  (* release_swfw_sync ) (struct ixgbe_hw*,int) ;} ;
struct TYPE_6__ {TYPE_1__ ops; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* write_reg_mdi ) (struct ixgbe_hw*,int,int,int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {int phy_semaphore_mask; TYPE_4__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; TYPE_3__ phy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IXGBE_ERR_SWFW_SYNC ; 
 int IXGBE_GSSR_TOKEN_SM ; 
 scalar_t__ IXGBE_SUCCESS ; 
 scalar_t__ FUNC1 (struct ixgbe_hw*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,int) ; 

s32 FUNC4(struct ixgbe_hw *hw, u32 reg_addr,
				u32 device_type, u16 phy_data)
{
	s32 status;
	u32 mask = hw->phy.phy_semaphore_mask | IXGBE_GSSR_TOKEN_SM;

	FUNC0("ixgbe_write_phy_reg_x550a");

	if (hw->mac.ops.acquire_swfw_sync(hw, mask) == IXGBE_SUCCESS) {
		status = hw->phy.ops.write_reg_mdi(hw, reg_addr, device_type,
						 phy_data);
		hw->mac.ops.release_swfw_sync(hw, mask);
	} else {
		status = IXGBE_ERR_SWFW_SYNC;
	}

	return status;
}