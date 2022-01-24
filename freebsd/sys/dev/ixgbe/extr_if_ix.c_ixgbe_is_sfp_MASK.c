#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int const (* get_media_type ) (struct ixgbe_hw*) ;} ;
struct TYPE_6__ {int type; TYPE_2__ ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct ixgbe_hw {TYPE_3__ mac; TYPE_1__ phy; } ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
#define  ixgbe_mac_82598EB 133 
#define  ixgbe_mac_82599EB 132 
#define  ixgbe_mac_X550EM_a 131 
#define  ixgbe_mac_X550EM_x 130 
#define  ixgbe_media_type_fiber 129 
#define  ixgbe_media_type_fiber_qsfp 128 
 int /*<<< orphan*/  ixgbe_phy_nl ; 
 int const FUNC0 (struct ixgbe_hw*) ; 
 int const FUNC1 (struct ixgbe_hw*) ; 

__attribute__((used)) static inline bool
FUNC2(struct ixgbe_hw *hw)
{
	switch (hw->mac.type) {
	case ixgbe_mac_82598EB:
		if (hw->phy.type == ixgbe_phy_nl)
			return (TRUE);
		return (FALSE);
	case ixgbe_mac_82599EB:
		switch (hw->mac.ops.get_media_type(hw)) {
		case ixgbe_media_type_fiber:
		case ixgbe_media_type_fiber_qsfp:
			return (TRUE);
		default:
			return (FALSE);
		}
	case ixgbe_mac_X550EM_x:
	case ixgbe_mac_X550EM_a:
		if (hw->mac.ops.get_media_type(hw) == ixgbe_media_type_fiber)
			return (TRUE);
		return (FALSE);
	default:
		return (FALSE);
	}
}