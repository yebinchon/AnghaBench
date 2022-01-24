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
typedef  scalar_t__ u16 ;
struct TYPE_2__ {int (* get_link_up_info ) (struct e1000_hw*,scalar_t__*,scalar_t__*) ;int /*<<< orphan*/  (* config_collision_dist ) (struct e1000_hw*) ;} ;
struct e1000_mac_info {int forced_speed_duplex; scalar_t__ type; TYPE_1__ ops; int /*<<< orphan*/  autoneg; scalar_t__ get_link_status; } ;
struct e1000_hw {struct e1000_mac_info mac; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int E1000_ALL_10_SPEED ; 
 int E1000_ERR_CONFIG ; 
 int /*<<< orphan*/  E1000_ICR ; 
 int /*<<< orphan*/  E1000_ICS ; 
 int E1000_ICS_LSC ; 
 int /*<<< orphan*/  E1000_IMC ; 
 int /*<<< orphan*/  E1000_IMS ; 
 int /*<<< orphan*/  E1000_RCTL ; 
 int E1000_RCTL_SBP ; 
 int FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int E1000_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FALSE ; 
 int IMS_ENABLE_MASK ; 
 scalar_t__ SPEED_1000 ; 
 scalar_t__ TRUE ; 
 scalar_t__ e1000_82544 ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*) ; 
 int FUNC5 (struct e1000_hw*) ; 
 int FUNC6 (struct e1000_hw*) ; 
 int FUNC7 (struct e1000_hw*,int,int /*<<< orphan*/ ,int*) ; 
 int FUNC8 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct e1000_hw*,scalar_t__) ; 
 scalar_t__ FUNC10 (struct e1000_hw*) ; 
 scalar_t__ FUNC11 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC12 (struct e1000_hw*) ; 
 int FUNC13 (struct e1000_hw*,scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static s32 FUNC14(struct e1000_hw *hw)
{
	struct e1000_mac_info *mac = &hw->mac;
	u32 icr, rctl;
	s32 ret_val;
	u16 speed, duplex;
	bool link;

	FUNC0("e1000_check_for_copper_link_82543");

	if (!mac->get_link_status) {
		ret_val = E1000_SUCCESS;
		goto out;
	}

	ret_val = FUNC7(hw, 1, 0, &link);
	if (ret_val)
		goto out;

	if (!link)
		goto out; /* No link detected */

	mac->get_link_status = FALSE;

	FUNC4(hw);

	/*
	 * If we are forcing speed/duplex, then we can return since
	 * we have already determined whether we have link or not.
	 */
	if (!mac->autoneg) {
		/*
		 * If speed and duplex are forced to 10H or 10F, then we will
		 * implement the polarity reversal workaround.  We disable
		 * interrupts first, and upon returning, place the devices
		 * interrupt state to its previous value except for the link
		 * status change interrupt which will happened due to the
		 * execution of this workaround.
		 */
		if (mac->forced_speed_duplex & E1000_ALL_10_SPEED) {
			FUNC3(hw, E1000_IMC, 0xFFFFFFFF);
			ret_val = FUNC8(hw);
			icr = FUNC2(hw, E1000_ICR);
			FUNC3(hw, E1000_ICS, (icr & ~E1000_ICS_LSC));
			FUNC3(hw, E1000_IMS, IMS_ENABLE_MASK);
		}

		ret_val = -E1000_ERR_CONFIG;
		goto out;
	}

	/*
	 * We have a M88E1000 PHY and Auto-Neg is enabled.  If we
	 * have Si on board that is 82544 or newer, Auto
	 * Speed Detection takes care of MAC speed/duplex
	 * configuration.  So we only need to configure Collision
	 * Distance in the MAC.  Otherwise, we need to force
	 * speed/duplex on the MAC to the current PHY speed/duplex
	 * settings.
	 */
	if (mac->type == e1000_82544)
		hw->mac.ops.config_collision_dist(hw);
	else {
		ret_val = FUNC6(hw);
		if (ret_val) {
			FUNC1("Error configuring MAC to PHY settings\n");
			goto out;
		}
	}

	/*
	 * Configure Flow Control now that Auto-Neg has completed.
	 * First, we need to restore the desired flow control
	 * settings because we may have had to re-autoneg with a
	 * different link partner.
	 */
	ret_val = FUNC5(hw);
	if (ret_val)
		FUNC1("Error configuring flow control\n");

	/*
	 * At this point we know that we are on copper and we have
	 * auto-negotiated link.  These are conditions for checking the link
	 * partner capability register.  We use the link speed to determine if
	 * TBI compatibility needs to be turned on or off.  If the link is not
	 * at gigabit speed, then TBI compatibility is not needed.  If we are
	 * at gigabit speed, we turn on TBI compatibility.
	 */
	if (FUNC10(hw)) {
		ret_val = mac->ops.get_link_up_info(hw, &speed, &duplex);
		if (ret_val) {
			FUNC1("Error getting link speed and duplex\n");
			return ret_val;
		}
		if (speed != SPEED_1000) {
			/*
			 * If link speed is not set to gigabit speed,
			 * we do not need to enable TBI compatibility.
			 */
			if (FUNC11(hw)) {
				/*
				 * If we previously were in the mode,
				 * turn it off.
				 */
				FUNC9(hw, FALSE);
				rctl = FUNC2(hw, E1000_RCTL);
				rctl &= ~E1000_RCTL_SBP;
				FUNC3(hw, E1000_RCTL, rctl);
			}
		} else {
			/*
			 * If TBI compatibility is was previously off,
			 * turn it on. For compatibility with a TBI link
			 * partner, we will store bad packets. Some
			 * frames have an additional byte on the end and
			 * will look like CRC errors to the hardware.
			 */
			if (!FUNC11(hw)) {
				FUNC9(hw, TRUE);
				rctl = FUNC2(hw, E1000_RCTL);
				rctl |= E1000_RCTL_SBP;
				FUNC3(hw, E1000_RCTL, rctl);
			}
		}
	}
out:
	return ret_val;
}