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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {struct i40e_hmc_obj_info* hmc_obj; int /*<<< orphan*/  hmc_fn_id; } ;
struct i40e_hw {TYPE_1__ hmc; } ;
struct i40e_hmc_obj_info {int base; int /*<<< orphan*/  cnt; int /*<<< orphan*/  size; } ;
struct i40e_hmc_lan_create_obj_info {size_t rsrc_type; int count; int /*<<< orphan*/  entry_type; int /*<<< orphan*/  direct_mode_sz; scalar_t__ start_idx; TYPE_1__* hmc_info; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;
typedef  enum i40e_hmc_model { ____Placeholder_i40e_hmc_model } i40e_hmc_model ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int I40E_ERR_INVALID_SD_TYPE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int I40E_GLHMC_FCOEDDPBASE_FPMFCOEDDPBASE_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int I40E_GLHMC_FCOEFBASE_FPMFCOEFBASE_MASK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int I40E_GLHMC_LANRXBASE_FPMLANRXBASE_MASK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int I40E_GLHMC_LANTXBASE_FPMLANTXBASE_MASK ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 size_t I40E_HMC_FCOE_CTX ; 
 size_t I40E_HMC_FCOE_FILT ; 
 size_t I40E_HMC_LAN_FULL ; 
 size_t I40E_HMC_LAN_RX ; 
 size_t I40E_HMC_LAN_TX ; 
#define  I40E_HMC_MODEL_DIRECT_ONLY 130 
#define  I40E_HMC_MODEL_DIRECT_PREFERRED 129 
#define  I40E_HMC_MODEL_PAGED_ONLY 128 
 int /*<<< orphan*/  I40E_SD_TYPE_DIRECT ; 
 int /*<<< orphan*/  I40E_SD_TYPE_PAGED ; 
 int I40E_SUCCESS ; 
 int FUNC9 (struct i40e_hw*,struct i40e_hmc_lan_create_obj_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

enum i40e_status_code FUNC11(struct i40e_hw *hw,
					     enum i40e_hmc_model model)
{
	struct i40e_hmc_lan_create_obj_info info;
	u8 hmc_fn_id = hw->hmc.hmc_fn_id;
	struct i40e_hmc_obj_info *obj;
	enum i40e_status_code ret_code = I40E_SUCCESS;

	/* Initialize part of the create object info struct */
	info.hmc_info = &hw->hmc;
	info.rsrc_type = I40E_HMC_LAN_FULL;
	info.start_idx = 0;
	info.direct_mode_sz = hw->hmc.hmc_obj[I40E_HMC_LAN_FULL].size;

	/* Build the SD entry for the LAN objects */
	switch (model) {
	case I40E_HMC_MODEL_DIRECT_PREFERRED:
	case I40E_HMC_MODEL_DIRECT_ONLY:
		info.entry_type = I40E_SD_TYPE_DIRECT;
		/* Make one big object, a single SD */
		info.count = 1;
		ret_code = FUNC9(hw, &info);
		if ((ret_code != I40E_SUCCESS) && (model == I40E_HMC_MODEL_DIRECT_PREFERRED))
			goto try_type_paged;
		else if (ret_code != I40E_SUCCESS)
			goto configure_lan_hmc_out;
		/* else clause falls through the break */
		break;
	case I40E_HMC_MODEL_PAGED_ONLY:
try_type_paged:
		info.entry_type = I40E_SD_TYPE_PAGED;
		/* Make one big object in the PD table */
		info.count = 1;
		ret_code = FUNC9(hw, &info);
		if (ret_code != I40E_SUCCESS)
			goto configure_lan_hmc_out;
		break;
	default:
		/* unsupported type */
		ret_code = I40E_ERR_INVALID_SD_TYPE;
		FUNC0("i40e_configure_lan_hmc: Unknown SD type: %d\n",
			  ret_code);
		goto configure_lan_hmc_out;
	}

	/* Configure and program the FPM registers so objects can be created */

	/* Tx contexts */
	obj = &hw->hmc.hmc_obj[I40E_HMC_LAN_TX];
	FUNC10(hw, FUNC7(hmc_fn_id),
	     (u32)((obj->base & I40E_GLHMC_LANTXBASE_FPMLANTXBASE_MASK) / 512));
	FUNC10(hw, FUNC8(hmc_fn_id), obj->cnt);

	/* Rx contexts */
	obj = &hw->hmc.hmc_obj[I40E_HMC_LAN_RX];
	FUNC10(hw, FUNC5(hmc_fn_id),
	     (u32)((obj->base & I40E_GLHMC_LANRXBASE_FPMLANRXBASE_MASK) / 512));
	FUNC10(hw, FUNC6(hmc_fn_id), obj->cnt);

	/* FCoE contexts */
	obj = &hw->hmc.hmc_obj[I40E_HMC_FCOE_CTX];
	FUNC10(hw, FUNC1(hmc_fn_id),
	 (u32)((obj->base & I40E_GLHMC_FCOEDDPBASE_FPMFCOEDDPBASE_MASK) / 512));
	FUNC10(hw, FUNC2(hmc_fn_id), obj->cnt);

	/* FCoE filters */
	obj = &hw->hmc.hmc_obj[I40E_HMC_FCOE_FILT];
	FUNC10(hw, FUNC3(hmc_fn_id),
	     (u32)((obj->base & I40E_GLHMC_FCOEFBASE_FPMFCOEFBASE_MASK) / 512));
	FUNC10(hw, FUNC4(hmc_fn_id), obj->cnt);

configure_lan_hmc_out:
	return ret_code;
}