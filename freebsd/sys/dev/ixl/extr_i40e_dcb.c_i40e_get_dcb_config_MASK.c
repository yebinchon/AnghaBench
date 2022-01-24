#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int fw_maj_ver; int fw_min_ver; scalar_t__ asq_last_status; } ;
struct TYPE_7__ {int /*<<< orphan*/  tlv_status; void* dcbx_mode; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct i40e_hw {TYPE_2__ aq; int /*<<< orphan*/  remote_dcbx_config; int /*<<< orphan*/  desired_dcbx_config; TYPE_3__ local_dcbx_config; TYPE_1__ mac; } ;
struct i40e_aqc_get_cee_dcb_cfg_v1_resp {int /*<<< orphan*/  tlv_status; } ;
struct i40e_aqc_get_cee_dcb_cfg_resp {int /*<<< orphan*/  tlv_status; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;
typedef  int /*<<< orphan*/  cee_v1_cfg ;
typedef  int /*<<< orphan*/  cee_cfg ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_AQ_LLDP_BRIDGE_TYPE_NEAREST_BRIDGE ; 
 int /*<<< orphan*/  I40E_AQ_LLDP_MIB_LOCAL ; 
 int /*<<< orphan*/  I40E_AQ_LLDP_MIB_REMOTE ; 
 scalar_t__ I40E_AQ_RC_ENOENT ; 
 void* I40E_DCBX_MODE_CEE ; 
 scalar_t__ I40E_MAC_XL710 ; 
 int I40E_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i40e_hw*,struct i40e_aqc_get_cee_dcb_cfg_v1_resp*,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_aqc_get_cee_dcb_cfg_v1_resp*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_aqc_get_cee_dcb_cfg_v1_resp*,TYPE_3__*) ; 
 int FUNC6 (struct i40e_hw*) ; 

enum i40e_status_code FUNC7(struct i40e_hw *hw)
{
	enum i40e_status_code ret = I40E_SUCCESS;
	struct i40e_aqc_get_cee_dcb_cfg_resp cee_cfg;
	struct i40e_aqc_get_cee_dcb_cfg_v1_resp cee_v1_cfg;

	/* If Firmware version < v4.33 on X710/XL710, IEEE only */
	if ((hw->mac.type == I40E_MAC_XL710) &&
	    (((hw->aq.fw_maj_ver == 4) && (hw->aq.fw_min_ver < 33)) ||
	      (hw->aq.fw_maj_ver < 4)))
		return FUNC6(hw);

	/* If Firmware version == v4.33 on X710/XL710, use old CEE struct */
	if ((hw->mac.type == I40E_MAC_XL710) &&
	    ((hw->aq.fw_maj_ver == 4) && (hw->aq.fw_min_ver == 33))) {
		ret = FUNC2(hw, &cee_v1_cfg,
						 sizeof(cee_v1_cfg), NULL);
		if (ret == I40E_SUCCESS) {
			/* CEE mode */
			hw->local_dcbx_config.dcbx_mode = I40E_DCBX_MODE_CEE;
			hw->local_dcbx_config.tlv_status =
					FUNC0(cee_v1_cfg.tlv_status);
			FUNC5(&cee_v1_cfg,
						  &hw->local_dcbx_config);
		}
	} else {
		ret = FUNC2(hw, &cee_cfg,
						 sizeof(cee_cfg), NULL);
		if (ret == I40E_SUCCESS) {
			/* CEE mode */
			hw->local_dcbx_config.dcbx_mode = I40E_DCBX_MODE_CEE;
			hw->local_dcbx_config.tlv_status =
					FUNC1(cee_cfg.tlv_status);
			FUNC4(&cee_cfg,
					       &hw->local_dcbx_config);
		}
	}

	/* CEE mode not enabled try querying IEEE data */
	if (hw->aq.asq_last_status == I40E_AQ_RC_ENOENT)
		return FUNC6(hw);

	if (ret != I40E_SUCCESS)
		goto out;

	/* Get CEE DCB Desired Config */
	ret = FUNC3(hw, I40E_AQ_LLDP_MIB_LOCAL, 0,
				     &hw->desired_dcbx_config);
	if (ret)
		goto out;

	/* Get Remote DCB Config */
	ret = FUNC3(hw, I40E_AQ_LLDP_MIB_REMOTE,
			     I40E_AQ_LLDP_BRIDGE_TYPE_NEAREST_BRIDGE,
			     &hw->remote_dcbx_config);
	/* Don't treat ENOENT as an error for Remote MIBs */
	if (hw->aq.asq_last_status == I40E_AQ_RC_ENOENT)
		ret = I40E_SUCCESS;

out:
	return ret;
}