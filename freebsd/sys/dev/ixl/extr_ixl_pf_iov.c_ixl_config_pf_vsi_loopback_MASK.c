#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ixl_vsi {int /*<<< orphan*/  seid; } ;
struct TYPE_4__ {int /*<<< orphan*/  asq_last_status; } ;
struct i40e_hw {TYPE_2__ aq; int /*<<< orphan*/  pf_id; } ;
struct ixl_pf {scalar_t__ veb_seid; struct ixl_vsi vsi; int /*<<< orphan*/  dev; struct i40e_hw hw; } ;
struct TYPE_3__ {void* switch_id; void* valid_sections; } ;
struct i40e_vsi_context {scalar_t__ uplink_seid; TYPE_1__ info; int /*<<< orphan*/  connection_type; int /*<<< orphan*/  pf_num; int /*<<< orphan*/  seid; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  ctxt ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_AQ_VSI_PROP_SWITCH_VALID ; 
 int /*<<< orphan*/  I40E_AQ_VSI_SW_ID_FLAG_ALLOW_LB ; 
 int /*<<< orphan*/  IXL_VSI_DATA_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i40e_hw*,struct i40e_vsi_context*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_vsi_context*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct ixl_pf *pf, bool enable)
{
	struct i40e_hw *hw = &pf->hw;
	device_t dev = pf->dev;
	struct ixl_vsi *vsi = &pf->vsi;
	struct i40e_vsi_context	ctxt;
	int error;

	FUNC3(&ctxt, 0, sizeof(ctxt));

	ctxt.seid = vsi->seid;
	if (pf->veb_seid != 0)
		ctxt.uplink_seid = pf->veb_seid;
	ctxt.pf_num = hw->pf_id;
	ctxt.connection_type = IXL_VSI_DATA_PORT;

	ctxt.info.valid_sections = FUNC1(I40E_AQ_VSI_PROP_SWITCH_VALID);
	ctxt.info.switch_id = (enable) ?
	    FUNC1(I40E_AQ_VSI_SW_ID_FLAG_ALLOW_LB) : 0;

	/* error is set to 0 on success */
	error = FUNC2(hw, &ctxt, NULL);
	if (error) {
		FUNC0(dev, "i40e_aq_update_vsi_params() failed, error %d,"
		    " aq_error %d\n", error, hw->aq.asq_last_status);
	}

	return (error);
}