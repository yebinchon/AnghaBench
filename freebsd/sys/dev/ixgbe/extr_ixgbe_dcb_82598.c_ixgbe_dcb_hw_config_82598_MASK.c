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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct ixgbe_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

s32 FUNC5(struct ixgbe_hw *hw, int link_speed,
			      u16 *refill, u16 *max, u8 *bwg_id,
			      u8 *tsa)
{
	FUNC0(link_speed);

	FUNC1(hw, refill, max, tsa);
	FUNC4(hw, refill, max, bwg_id,
					       tsa);
	FUNC3(hw, refill, max, bwg_id,
					       tsa);
	FUNC2(hw);


	return IXGBE_SUCCESS;
}