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
struct TYPE_8__ {int /*<<< orphan*/  requested_mode; int /*<<< orphan*/  current_mode; int /*<<< orphan*/  fc_was_autonegged; scalar_t__ disable_fc_autoneg; } ;
struct TYPE_7__ {int media_type; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* check_link ) (struct ixgbe_hw*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_4__ fc; TYPE_3__ phy; TYPE_2__ mac; } ;
typedef  scalar_t__ s32 ;
typedef  int /*<<< orphan*/  ixgbe_link_speed ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IXGBE_ERROR_SOFTWARE ; 
 int /*<<< orphan*/  IXGBE_ERROR_UNSUPPORTED ; 
 scalar_t__ IXGBE_ERR_FC_NOT_NEGOTIATED ; 
 int /*<<< orphan*/  IXGBE_LINK_SPEED_1GB_FULL ; 
 scalar_t__ IXGBE_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*) ; 
 scalar_t__ FUNC3 (struct ixgbe_hw*) ; 
 scalar_t__ FUNC4 (struct ixgbe_hw*) ; 
 scalar_t__ FUNC5 (struct ixgbe_hw*) ; 
#define  ixgbe_media_type_backplane 132 
#define  ixgbe_media_type_copper 131 
#define  ixgbe_media_type_fiber 130 
#define  ixgbe_media_type_fiber_fixed 129 
#define  ixgbe_media_type_fiber_qsfp 128 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 

void FUNC7(struct ixgbe_hw *hw)
{
	s32 ret_val = IXGBE_ERR_FC_NOT_NEGOTIATED;
	ixgbe_link_speed speed;
	bool link_up;

	FUNC0("ixgbe_fc_autoneg");

	/*
	 * AN should have completed when the cable was plugged in.
	 * Look for reasons to bail out.  Bail out if:
	 * - FC autoneg is disabled, or if
	 * - link is not up.
	 */
	if (hw->fc.disable_fc_autoneg) {
		FUNC1(IXGBE_ERROR_UNSUPPORTED,
			     "Flow control autoneg is disabled");
		goto out;
	}

	hw->mac.ops.check_link(hw, &speed, &link_up, FALSE);
	if (!link_up) {
		FUNC1(IXGBE_ERROR_SOFTWARE, "The link is down");
		goto out;
	}

	switch (hw->phy.media_type) {
	/* Autoneg flow control on fiber adapters */
	case ixgbe_media_type_fiber_fixed:
	case ixgbe_media_type_fiber_qsfp:
	case ixgbe_media_type_fiber:
		if (speed == IXGBE_LINK_SPEED_1GB_FULL)
			ret_val = FUNC5(hw);
		break;

	/* Autoneg flow control on backplane adapters */
	case ixgbe_media_type_backplane:
		ret_val = FUNC3(hw);
		break;

	/* Autoneg flow control on copper adapters */
	case ixgbe_media_type_copper:
		if (FUNC2(hw))
			ret_val = FUNC4(hw);
		break;

	default:
		break;
	}

out:
	if (ret_val == IXGBE_SUCCESS) {
		hw->fc.fc_was_autonegged = TRUE;
	} else {
		hw->fc.fc_was_autonegged = FALSE;
		hw->fc.current_mode = hw->fc.requested_mode;
	}
}