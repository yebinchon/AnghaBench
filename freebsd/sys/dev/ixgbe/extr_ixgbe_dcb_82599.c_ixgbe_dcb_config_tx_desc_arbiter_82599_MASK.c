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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct ixgbe_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int IXGBE_DCB_MAX_TRAFFIC_CLASS ; 
 int /*<<< orphan*/  IXGBE_RTTDCS ; 
 int IXGBE_RTTDCS_TDPAC ; 
 int IXGBE_RTTDCS_TDRM ; 
 int /*<<< orphan*/  IXGBE_RTTDQSEL ; 
 int /*<<< orphan*/  IXGBE_RTTDT1C ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IXGBE_RTTDT2C_BWG_SHIFT ; 
 int IXGBE_RTTDT2C_GSP ; 
 int IXGBE_RTTDT2C_LSP ; 
 int IXGBE_RTTDT2C_MCL_SHIFT ; 
 int /*<<< orphan*/  IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int ixgbe_dcb_tsa_group_strict_cee ; 
 int ixgbe_dcb_tsa_strict ; 

s32 FUNC2(struct ixgbe_hw *hw, u16 *refill,
					   u16 *max, u8 *bwg_id, u8 *tsa)
{
	u32 reg, max_credits;
	u8  i;

	/* Clear the per-Tx queue credits; we use per-TC instead */
	for (i = 0; i < 128; i++) {
		FUNC1(hw, IXGBE_RTTDQSEL, i);
		FUNC1(hw, IXGBE_RTTDT1C, 0);
	}

	/* Configure traffic class credits and priority */
	for (i = 0; i < IXGBE_DCB_MAX_TRAFFIC_CLASS; i++) {
		max_credits = max[i];
		reg = max_credits << IXGBE_RTTDT2C_MCL_SHIFT;
		reg |= refill[i];
		reg |= (u32)(bwg_id[i]) << IXGBE_RTTDT2C_BWG_SHIFT;

		if (tsa[i] == ixgbe_dcb_tsa_group_strict_cee)
			reg |= IXGBE_RTTDT2C_GSP;

		if (tsa[i] == ixgbe_dcb_tsa_strict)
			reg |= IXGBE_RTTDT2C_LSP;

		FUNC1(hw, FUNC0(i), reg);
	}

	/*
	 * Configure Tx descriptor plane (recycle mode; WSP) and
	 * enable arbiter
	 */
	reg = IXGBE_RTTDCS_TDPAC | IXGBE_RTTDCS_TDRM;
	FUNC1(hw, IXGBE_RTTDCS, reg);

	return IXGBE_SUCCESS;
}