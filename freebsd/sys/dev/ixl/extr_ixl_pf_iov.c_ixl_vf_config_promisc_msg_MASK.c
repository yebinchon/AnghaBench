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
typedef  int uint16_t ;
struct virtchnl_promisc_info {scalar_t__ vsi_id; int flags; } ;
struct TYPE_3__ {scalar_t__ vsi_num; int /*<<< orphan*/  seid; } ;
struct ixl_vf {int vf_flags; TYPE_1__ vsi; } ;
struct TYPE_4__ {int /*<<< orphan*/  asq_last_status; } ;
struct i40e_hw {TYPE_2__ aq; } ;
struct ixl_pf {int /*<<< orphan*/  dev; struct i40e_hw hw; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;

/* Variables and functions */
 int FLAG_VF_MULTICAST_PROMISC ; 
 int FLAG_VF_UNICAST_PROMISC ; 
 int /*<<< orphan*/  I40E_ERR_PARAM ; 
 int I40E_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 int VF_FLAG_PROMISC_CAP ; 
 int /*<<< orphan*/  VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i40e_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct i40e_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ixl_pf*,struct ixl_vf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_hw*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ixl_pf*,struct ixl_vf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct ixl_pf *pf, struct ixl_vf *vf,
    void *msg, uint16_t msg_size)
{
	struct virtchnl_promisc_info *info;
	struct i40e_hw *hw = &pf->hw;
	enum i40e_status_code code;

	if (msg_size != sizeof(*info)) {
		FUNC4(pf, vf,
		    VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE, I40E_ERR_PARAM);
		return;
	}

	if (!(vf->vf_flags & VF_FLAG_PROMISC_CAP)) {
		/*
		 * Do the same thing as the Linux PF driver -- lie to the VF
		 */
		FUNC6(pf, vf,
		    VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE);
		return;
	}

	info = msg;
	if (info->vsi_id != vf->vsi.vsi_num) {
		FUNC4(pf, vf,
		    VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE, I40E_ERR_PARAM);
		return;
	}

	code = FUNC2(hw, vf->vsi.seid,
	    info->flags & FLAG_VF_UNICAST_PROMISC, NULL, TRUE);
	if (code != I40E_SUCCESS) {
		FUNC0(pf->dev, "i40e_aq_set_vsi_unicast_promiscuous (seid %d) failed: status %s,"
		    " error %s\n", vf->vsi.seid, FUNC5(hw, code),
		    FUNC3(hw, hw->aq.asq_last_status));
		FUNC4(pf, vf,
		    VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE, I40E_ERR_PARAM);
		return;
	}

	code = FUNC1(hw, vf->vsi.seid,
	    info->flags & FLAG_VF_MULTICAST_PROMISC, NULL);
	if (code != I40E_SUCCESS) {
		FUNC0(pf->dev, "i40e_aq_set_vsi_multicast_promiscuous (seid %d) failed: status %s,"
		    " error %s\n", vf->vsi.seid, FUNC5(hw, code),
		    FUNC3(hw, hw->aq.asq_last_status));
		FUNC4(pf, vf,
		    VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE, I40E_ERR_PARAM);
		return;
	}

	FUNC6(pf, vf, VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE);
}