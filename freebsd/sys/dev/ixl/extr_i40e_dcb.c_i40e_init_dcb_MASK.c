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
typedef  int u8 ;
struct i40e_lldp_variables {int adminstatus; } ;
struct TYPE_2__ {int /*<<< orphan*/  dcb; } ;
struct i40e_hw {int port; int dcbx_status; TYPE_1__ func_caps; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;

/* Variables and functions */
#define  I40E_DCBX_STATUS_DISABLED 132 
#define  I40E_DCBX_STATUS_DONE 131 
#define  I40E_DCBX_STATUS_IN_PROGRESS 130 
#define  I40E_DCBX_STATUS_MULTIPLE_PEERS 129 
#define  I40E_DCBX_STATUS_NOT_STARTED 128 
 int I40E_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct i40e_hw*) ; 
 int FUNC2 (struct i40e_hw*,int*) ; 
 int FUNC3 (struct i40e_hw*,struct i40e_lldp_variables*) ; 

enum i40e_status_code FUNC4(struct i40e_hw *hw)
{
	enum i40e_status_code ret = I40E_SUCCESS;
	struct i40e_lldp_variables lldp_cfg;
	u8 adminstatus = 0;

	if (!hw->func_caps.dcb)
		return ret;

	/* Read LLDP NVM area */
	ret = FUNC3(hw, &lldp_cfg);
	if (ret)
		return ret;

	/* Get the LLDP AdminStatus for the current port */
	adminstatus = lldp_cfg.adminstatus >> (hw->port * 4);
	adminstatus &= 0xF;

	/* LLDP agent disabled */
	if (!adminstatus) {
		hw->dcbx_status = I40E_DCBX_STATUS_DISABLED;
		return ret;
	}

	/* Get DCBX status */
	ret = FUNC2(hw, &hw->dcbx_status);
	if (ret)
		return ret;

	/* Check the DCBX Status */
	switch (hw->dcbx_status) {
	case I40E_DCBX_STATUS_DONE:
	case I40E_DCBX_STATUS_IN_PROGRESS:
		/* Get current DCBX configuration */
		ret = FUNC1(hw);
		if (ret)
			return ret;
		break;
	case I40E_DCBX_STATUS_DISABLED:
		return ret;
	case I40E_DCBX_STATUS_NOT_STARTED:
	case I40E_DCBX_STATUS_MULTIPLE_PEERS:
	default:
		break;
	}

	/* Configure the LLDP MIB change event */
	ret = FUNC0(hw, TRUE, NULL);
	if (ret)
		return ret;

	return ret;
}