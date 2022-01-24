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
struct TYPE_2__ {int bkt_hash; } ;
union ixgbe_atr_input {TYPE_1__ formatted; } ;
typedef  int u32 ;
typedef  int u16 ;
struct ixgbe_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IXGBE_FDIRCMD ; 
 int IXGBE_FDIRCMD_CMD_QUERY_REM_FILT ; 
 int IXGBE_FDIRCMD_CMD_REMOVE_FLOW ; 
 int IXGBE_FDIRCMD_FILTER_VALID ; 
 int /*<<< orphan*/  IXGBE_FDIRHASH ; 
 int IXGBE_FDIRHASH_SIG_SW_INDEX_SHIFT ; 
 scalar_t__ IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct ixgbe_hw*,int*) ; 

s32 FUNC4(struct ixgbe_hw *hw,
					  union ixgbe_atr_input *input,
					  u16 soft_id)
{
	u32 fdirhash;
	u32 fdircmd;
	s32 err;

	/* configure FDIRHASH register */
	fdirhash = input->formatted.bkt_hash;
	fdirhash |= soft_id << IXGBE_FDIRHASH_SIG_SW_INDEX_SHIFT;
	FUNC2(hw, IXGBE_FDIRHASH, fdirhash);

	/* flush hash to HW */
	FUNC1(hw);

	/* Query if filter is present */
	FUNC2(hw, IXGBE_FDIRCMD, IXGBE_FDIRCMD_CMD_QUERY_REM_FILT);

	err = FUNC3(hw, &fdircmd);
	if (err) {
		FUNC0("Flow Director command did not complete!\n");
		return err;
	}

	/* if filter exists in hardware then remove it */
	if (fdircmd & IXGBE_FDIRCMD_FILTER_VALID) {
		FUNC2(hw, IXGBE_FDIRHASH, fdirhash);
		FUNC1(hw);
		FUNC2(hw, IXGBE_FDIRCMD,
				IXGBE_FDIRCMD_CMD_REMOVE_FLOW);
	}

	return IXGBE_SUCCESS;
}