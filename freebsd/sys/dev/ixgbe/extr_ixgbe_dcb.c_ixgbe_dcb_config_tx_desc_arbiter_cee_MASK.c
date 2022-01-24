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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_dcb_config {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int IXGBE_DCB_MAX_TRAFFIC_CLASS ; 
 int /*<<< orphan*/  IXGBE_DCB_TX_CONFIG ; 
 int /*<<< orphan*/  IXGBE_NOT_IMPLEMENTED ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_dcb_config*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_dcb_config*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_dcb_config*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_dcb_config*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
#define  ixgbe_mac_82598EB 133 
#define  ixgbe_mac_82599EB 132 
#define  ixgbe_mac_X540 131 
#define  ixgbe_mac_X550 130 
#define  ixgbe_mac_X550EM_a 129 
#define  ixgbe_mac_X550EM_x 128 

s32 FUNC6(struct ixgbe_hw *hw,
				     struct ixgbe_dcb_config *dcb_config)
{
	s32 ret = IXGBE_NOT_IMPLEMENTED;
	u8 tsa[IXGBE_DCB_MAX_TRAFFIC_CLASS];
	u8 bwgid[IXGBE_DCB_MAX_TRAFFIC_CLASS];
	u16 refill[IXGBE_DCB_MAX_TRAFFIC_CLASS];
	u16 max[IXGBE_DCB_MAX_TRAFFIC_CLASS];

	FUNC4(dcb_config, IXGBE_DCB_TX_CONFIG, refill);
	FUNC3(dcb_config, max);
	FUNC2(dcb_config, IXGBE_DCB_TX_CONFIG, bwgid);
	FUNC5(dcb_config, IXGBE_DCB_TX_CONFIG, tsa);

	switch (hw->mac.type) {
	case ixgbe_mac_82598EB:
		ret = FUNC0(hw, refill, max,
							     bwgid, tsa);
		break;
	case ixgbe_mac_82599EB:
	case ixgbe_mac_X540:
	case ixgbe_mac_X550:
	case ixgbe_mac_X550EM_x:
	case ixgbe_mac_X550EM_a:
#if !defined(NO_82599_SUPPORT) || !defined(NO_X540_SUPPORT)
		ret = FUNC1(hw, refill, max,
							     bwgid, tsa);
		break;
#endif
	default:
		break;
	}
	return ret;
}