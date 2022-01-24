#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_9__ {scalar_t__ (* read ) (struct ixgbe_hw*,int,int*) ;} ;
struct TYPE_12__ {int /*<<< orphan*/  semaphore_delay; TYPE_3__ ops; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* release_swfw_sync ) (struct ixgbe_hw*,int /*<<< orphan*/ ) ;scalar_t__ (* prot_autoc_write ) (struct ixgbe_hw*,int,int /*<<< orphan*/ ) ;scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int /*<<< orphan*/ ) ;} ;
struct TYPE_11__ {int orig_autoc; TYPE_4__ ops; } ;
struct TYPE_7__ {int /*<<< orphan*/ * reset; } ;
struct TYPE_8__ {scalar_t__ sfp_type; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_6__ eeprom; TYPE_5__ mac; TYPE_2__ phy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int IXGBE_AUTOC_LMS_10G_SERIAL ; 
 int /*<<< orphan*/  IXGBE_CORECTL ; 
 int /*<<< orphan*/  IXGBE_ERROR_INVALID_STATE ; 
 scalar_t__ IXGBE_ERR_PHY ; 
 scalar_t__ IXGBE_ERR_SFP_SETUP_NOT_COMPLETE ; 
 scalar_t__ IXGBE_ERR_SWFW_SYNC ; 
 int /*<<< orphan*/  IXGBE_GSSR_MAC_CSR_SM ; 
 scalar_t__ IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct ixgbe_hw*,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*) ; 
 scalar_t__ ixgbe_sfp_type_unknown ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct ixgbe_hw*,int,int*) ; 
 scalar_t__ FUNC10 (struct ixgbe_hw*,int,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct ixgbe_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 

s32 FUNC14(struct ixgbe_hw *hw)
{
	s32 ret_val = IXGBE_SUCCESS;
	u16 list_offset, data_offset, data_value;

	FUNC0("ixgbe_setup_sfp_modules_82599");

	if (hw->phy.sfp_type != ixgbe_sfp_type_unknown) {
		FUNC6(hw);

		hw->phy.ops.reset = NULL;

		ret_val = FUNC5(hw, &list_offset,
							      &data_offset);
		if (ret_val != IXGBE_SUCCESS)
			goto setup_sfp_out;

		/* PHY config will finish before releasing the semaphore */
		ret_val = hw->mac.ops.acquire_swfw_sync(hw,
							IXGBE_GSSR_MAC_CSR_SM);
		if (ret_val != IXGBE_SUCCESS) {
			ret_val = IXGBE_ERR_SWFW_SYNC;
			goto setup_sfp_out;
		}

		if (hw->eeprom.ops.read(hw, ++data_offset, &data_value))
			goto setup_sfp_err;
		while (data_value != 0xffff) {
			FUNC4(hw, IXGBE_CORECTL, data_value);
			FUNC3(hw);
			if (hw->eeprom.ops.read(hw, ++data_offset, &data_value))
				goto setup_sfp_err;
		}

		/* Release the semaphore */
		hw->mac.ops.release_swfw_sync(hw, IXGBE_GSSR_MAC_CSR_SM);
		/* Delay obtaining semaphore again to allow FW access
		 * prot_autoc_write uses the semaphore too.
		 */
		FUNC7(hw->eeprom.semaphore_delay);

		/* Restart DSP and set SFI mode */
		ret_val = hw->mac.ops.prot_autoc_write(hw,
			hw->mac.orig_autoc | IXGBE_AUTOC_LMS_10G_SERIAL,
			FALSE);

		if (ret_val) {
			FUNC1("sfp module setup not complete\n");
			ret_val = IXGBE_ERR_SFP_SETUP_NOT_COMPLETE;
			goto setup_sfp_out;
		}

	}

setup_sfp_out:
	return ret_val;

setup_sfp_err:
	/* Release the semaphore */
	hw->mac.ops.release_swfw_sync(hw, IXGBE_GSSR_MAC_CSR_SM);
	/* Delay obtaining semaphore again to allow FW access */
	FUNC7(hw->eeprom.semaphore_delay);
	FUNC2(IXGBE_ERROR_INVALID_STATE,
		      "eeprom read at offset %d failed", data_offset);
	return IXGBE_ERR_PHY;
}