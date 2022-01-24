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
typedef  int /*<<< orphan*/  u32 ;
struct ixgbe_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_SWFW_REGSMP ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  IXGBE_SWSM_SMBI ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ixgbe_hw *hw)
{
	u32 swsm;

	FUNC0("ixgbe_release_swfw_sync_semaphore");

	/* Release both semaphores by writing 0 to the bits REGSMP and SMBI */

	swsm = FUNC1(hw, FUNC2(hw));
	swsm &= ~IXGBE_SWFW_REGSMP;
	FUNC5(hw, FUNC2(hw), swsm);

	swsm = FUNC1(hw, FUNC3(hw));
	swsm &= ~IXGBE_SWSM_SMBI;
	FUNC5(hw, FUNC3(hw), swsm);

	FUNC4(hw);
}