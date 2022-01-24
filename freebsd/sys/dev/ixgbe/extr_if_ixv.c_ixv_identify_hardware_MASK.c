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
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
struct ixgbe_hw {int device_id; TYPE_1__ mac; int /*<<< orphan*/  subsystem_device_id; int /*<<< orphan*/  subsystem_vendor_id; int /*<<< orphan*/  revision_id; int /*<<< orphan*/  vendor_id; } ;
struct adapter {struct ixgbe_hw hw; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
#define  IXGBE_DEV_ID_82599_VF 132 
#define  IXGBE_DEV_ID_X540_VF 131 
#define  IXGBE_DEV_ID_X550EM_A_VF 130 
#define  IXGBE_DEV_ID_X550EM_X_VF 129 
#define  IXGBE_DEV_ID_X550_VF 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ixgbe_mac_82599_vf ; 
 int /*<<< orphan*/  ixgbe_mac_X540_vf ; 
 int /*<<< orphan*/  ixgbe_mac_X550EM_a_vf ; 
 int /*<<< orphan*/  ixgbe_mac_X550EM_x_vf ; 
 int /*<<< orphan*/  ixgbe_mac_X550_vf ; 
 int /*<<< orphan*/  ixgbe_mac_unknown ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(if_ctx_t ctx)
{
	struct adapter  *adapter = FUNC2(ctx);
	device_t        dev = FUNC1(ctx);
	struct ixgbe_hw *hw = &adapter->hw;

	/* Save off the information about this board */
	hw->vendor_id = FUNC7(dev);
	hw->device_id = FUNC3(dev);
	hw->revision_id = FUNC4(dev);
	hw->subsystem_vendor_id = FUNC6(dev);
	hw->subsystem_device_id = FUNC5(dev);

	/* A subset of set_mac_type */
	switch (hw->device_id) {
	case IXGBE_DEV_ID_82599_VF:
		hw->mac.type = ixgbe_mac_82599_vf;
		break;
	case IXGBE_DEV_ID_X540_VF:
		hw->mac.type = ixgbe_mac_X540_vf;
		break;
	case IXGBE_DEV_ID_X550_VF:
		hw->mac.type = ixgbe_mac_X550_vf;
		break;
	case IXGBE_DEV_ID_X550EM_X_VF:
		hw->mac.type = ixgbe_mac_X550EM_x_vf;
		break;
	case IXGBE_DEV_ID_X550EM_A_VF:
		hw->mac.type = ixgbe_mac_X550EM_a_vf;
		break;
	default:
		FUNC0(dev, "unknown mac type\n");
		hw->mac.type = ixgbe_mac_unknown;
		break;
	}
}