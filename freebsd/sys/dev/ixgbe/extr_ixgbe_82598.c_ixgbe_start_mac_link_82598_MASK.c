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
typedef  scalar_t__ u32 ;
struct ixgbe_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  IXGBE_AUTOC ; 
 scalar_t__ IXGBE_AUTOC_AN_RESTART ; 
 scalar_t__ IXGBE_AUTOC_LMS_KX4_AN ; 
 scalar_t__ IXGBE_AUTOC_LMS_KX4_AN_1G_AN ; 
 scalar_t__ IXGBE_AUTOC_LMS_MASK ; 
 scalar_t__ IXGBE_AUTO_NEG_TIME ; 
 int /*<<< orphan*/  IXGBE_ERR_AUTONEG_NOT_COMPLETE ; 
 int /*<<< orphan*/  IXGBE_LINKS ; 
 scalar_t__ IXGBE_LINKS_KX_AN_COMP ; 
 scalar_t__ FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static s32 FUNC5(struct ixgbe_hw *hw,
				      bool autoneg_wait_to_complete)
{
	u32 autoc_reg;
	u32 links_reg;
	u32 i;
	s32 status = IXGBE_SUCCESS;

	FUNC0("ixgbe_start_mac_link_82598");

	/* Restart link */
	autoc_reg = FUNC2(hw, IXGBE_AUTOC);
	autoc_reg |= IXGBE_AUTOC_AN_RESTART;
	FUNC3(hw, IXGBE_AUTOC, autoc_reg);

	/* Only poll for autoneg to complete if specified to do so */
	if (autoneg_wait_to_complete) {
		if ((autoc_reg & IXGBE_AUTOC_LMS_MASK) ==
		     IXGBE_AUTOC_LMS_KX4_AN ||
		    (autoc_reg & IXGBE_AUTOC_LMS_MASK) ==
		     IXGBE_AUTOC_LMS_KX4_AN_1G_AN) {
			links_reg = 0; /* Just in case Autoneg time = 0 */
			for (i = 0; i < IXGBE_AUTO_NEG_TIME; i++) {
				links_reg = FUNC2(hw, IXGBE_LINKS);
				if (links_reg & IXGBE_LINKS_KX_AN_COMP)
					break;
				FUNC4(100);
			}
			if (!(links_reg & IXGBE_LINKS_KX_AN_COMP)) {
				status = IXGBE_ERR_AUTONEG_NOT_COMPLETE;
				FUNC1("Autonegotiation did not complete.\n");
			}
		}
	}

	/* Add delay to filter out noises during initial link setup */
	FUNC4(50);

	return status;
}