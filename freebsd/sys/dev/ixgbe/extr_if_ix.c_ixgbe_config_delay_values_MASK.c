#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int* high_water; int /*<<< orphan*/  send_xon; int /*<<< orphan*/  pause_time; void** low_water; } ;
struct TYPE_3__ {int type; } ;
struct ixgbe_hw {TYPE_2__ fc; TYPE_1__ mac; } ;
struct adapter {int max_frame_size; struct ixgbe_hw hw; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  IXGBE_FC_PAUSE ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
#define  ixgbe_mac_X540 131 
#define  ixgbe_mac_X550 130 
#define  ixgbe_mac_X550EM_a 129 
#define  ixgbe_mac_X550EM_x 128 

__attribute__((used)) static void
FUNC7(struct adapter *adapter)
{
	struct ixgbe_hw *hw = &adapter->hw;
	u32             rxpb, frame, size, tmp;

	frame = adapter->max_frame_size;

	/* Calculate High Water */
	switch (hw->mac.type) {
	case ixgbe_mac_X540:
	case ixgbe_mac_X550:
	case ixgbe_mac_X550EM_x:
	case ixgbe_mac_X550EM_a:
		tmp = FUNC2(frame, frame);
		break;
	default:
		tmp = FUNC1(frame, frame);
		break;
	}
	size = FUNC0(tmp);
	rxpb = FUNC5(hw, FUNC6(0)) >> 10;
	hw->fc.high_water[0] = rxpb - size;

	/* Now calculate Low Water */
	switch (hw->mac.type) {
	case ixgbe_mac_X540:
	case ixgbe_mac_X550:
	case ixgbe_mac_X550EM_x:
	case ixgbe_mac_X550EM_a:
		tmp = FUNC4(frame);
		break;
	default:
		tmp = FUNC3(frame);
		break;
	}
	hw->fc.low_water[0] = FUNC0(tmp);

	hw->fc.pause_time = IXGBE_FC_PAUSE;
	hw->fc.send_xon = TRUE;
}