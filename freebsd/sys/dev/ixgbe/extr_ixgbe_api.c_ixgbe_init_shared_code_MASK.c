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
struct TYPE_2__ {int type; int /*<<< orphan*/  max_link_up_time; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IXGBE_ERR_DEVICE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  IXGBE_LINK_UP_TIME ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*) ; 
#define  ixgbe_mac_82598EB 133 
#define  ixgbe_mac_82599EB 132 
#define  ixgbe_mac_X540 131 
#define  ixgbe_mac_X550 130 
#define  ixgbe_mac_X550EM_a 129 
#define  ixgbe_mac_X550EM_x 128 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_hw*) ; 

s32 FUNC8(struct ixgbe_hw *hw)
{
	s32 status;

	FUNC0("ixgbe_init_shared_code");

	/*
	 * Set the mac type
	 */
	FUNC7(hw);

	switch (hw->mac.type) {
	case ixgbe_mac_82598EB:
		status = FUNC1(hw);
		break;
	case ixgbe_mac_82599EB:
		status = FUNC2(hw);
		break;
	case ixgbe_mac_X540:
		status = FUNC3(hw);
		break;
	case ixgbe_mac_X550:
		status = FUNC4(hw);
		break;
	case ixgbe_mac_X550EM_x:
		status = FUNC6(hw);
		break;
	case ixgbe_mac_X550EM_a:
		status = FUNC5(hw);
		break;
	default:
		status = IXGBE_ERR_DEVICE_NOT_SUPPORTED;
		break;
	}
	hw->mac.max_link_up_time = IXGBE_LINK_UP_TIME;

	return status;
}