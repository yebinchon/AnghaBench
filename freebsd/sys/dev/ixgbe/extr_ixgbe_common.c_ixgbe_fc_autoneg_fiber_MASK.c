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
typedef  int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IXGBE_ERR_FC_NOT_NEGOTIATED ; 
 int /*<<< orphan*/  IXGBE_PCS1GANA ; 
 int /*<<< orphan*/  IXGBE_PCS1GANA_ASM_PAUSE ; 
 int /*<<< orphan*/  IXGBE_PCS1GANA_SYM_PAUSE ; 
 int /*<<< orphan*/  IXGBE_PCS1GANLP ; 
 int /*<<< orphan*/  IXGBE_PCS1GLSTA ; 
 int IXGBE_PCS1GLSTA_AN_COMPLETE ; 
 int IXGBE_PCS1GLSTA_AN_TIMED_OUT ; 
 int FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC3(struct ixgbe_hw *hw)
{
	u32 pcs_anadv_reg, pcs_lpab_reg, linkstat;
	s32 ret_val = IXGBE_ERR_FC_NOT_NEGOTIATED;

	/*
	 * On multispeed fiber at 1g, bail out if
	 * - link is up but AN did not complete, or if
	 * - link is up and AN completed but timed out
	 */

	linkstat = FUNC1(hw, IXGBE_PCS1GLSTA);
	if ((!!(linkstat & IXGBE_PCS1GLSTA_AN_COMPLETE) == 0) ||
	    (!!(linkstat & IXGBE_PCS1GLSTA_AN_TIMED_OUT) == 1)) {
		FUNC0("Auto-Negotiation did not complete or timed out\n");
		goto out;
	}

	pcs_anadv_reg = FUNC1(hw, IXGBE_PCS1GANA);
	pcs_lpab_reg = FUNC1(hw, IXGBE_PCS1GANLP);

	ret_val =  FUNC2(hw, pcs_anadv_reg,
				      pcs_lpab_reg, IXGBE_PCS1GANA_SYM_PAUSE,
				      IXGBE_PCS1GANA_ASM_PAUSE,
				      IXGBE_PCS1GANA_SYM_PAUSE,
				      IXGBE_PCS1GANA_ASM_PAUSE);

out:
	return ret_val;
}