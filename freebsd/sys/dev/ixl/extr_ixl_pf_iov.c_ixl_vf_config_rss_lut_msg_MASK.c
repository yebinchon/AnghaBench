#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  u32 ;
struct virtchnl_rss_lut {int lut_entries; int /*<<< orphan*/ * lut; int /*<<< orphan*/  vsi_id; } ;
struct TYPE_5__ {int /*<<< orphan*/  vsi_num; } ;
struct ixl_vf {int /*<<< orphan*/  vf_num; TYPE_2__ vsi; } ;
struct TYPE_6__ {int /*<<< orphan*/  asq_last_status; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct i40e_hw {TYPE_3__ aq; TYPE_1__ mac; } ;
struct ixl_pf {int /*<<< orphan*/  dev; struct i40e_hw hw; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  I40E_ERR_ADMIN_QUEUE_ERROR ; 
 int /*<<< orphan*/  I40E_ERR_PARAM ; 
 scalar_t__ I40E_MAC_X722 ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VIRTCHNL_OP_CONFIG_RSS_LUT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,...) ; 
 int FUNC3 (struct i40e_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ixl_pf*,struct ixl_vf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i40e_hw*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ixl_pf*,struct ixl_vf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct ixl_pf *pf, struct ixl_vf *vf, void *msg,
    uint16_t msg_size)
{
	struct i40e_hw *hw;
	struct virtchnl_rss_lut *lut;
	enum i40e_status_code status;

	hw = &pf->hw;

	if (msg_size < sizeof(*lut)) {
		FUNC5(pf, vf, VIRTCHNL_OP_CONFIG_RSS_LUT,
		    I40E_ERR_PARAM);
		return;
	}

	lut = msg;

	if (lut->lut_entries > 64) {
		FUNC2(pf->dev, "VF %d: # of LUT entries in msg (%d) is greater than max (%d)\n",
		    vf->vf_num, lut->lut_entries, 64);
		FUNC5(pf, vf, VIRTCHNL_OP_CONFIG_RSS_LUT,
		    I40E_ERR_PARAM);
		return;
	}

	if (lut->vsi_id != vf->vsi.vsi_num) {
		FUNC2(pf->dev, "VF %d: VSI id in recvd message (%d) does not match expected id (%d)\n",
		    vf->vf_num, lut->vsi_id, vf->vsi.vsi_num);
		FUNC5(pf, vf, VIRTCHNL_OP_CONFIG_RSS_LUT,
		    I40E_ERR_PARAM);
		return;
	}

	/* Fill out LUT using MAC-dependent method */
	if (hw->mac.type == I40E_MAC_X722) {
		status = FUNC3(hw, vf->vsi.vsi_num, false, lut->lut, lut->lut_entries);
		if (status) {
			FUNC2(pf->dev, "i40e_aq_set_rss_lut status %s, error %s\n",
			    FUNC6(hw, status), FUNC4(hw, hw->aq.asq_last_status));
			FUNC5(pf, vf, VIRTCHNL_OP_CONFIG_RSS_LUT,
			    I40E_ERR_ADMIN_QUEUE_ERROR);
			return;
		}
	} else {
		for (int i = 0; i < (lut->lut_entries / 4); i++)
			FUNC7(hw, FUNC1(i, vf->vf_num), ((u32 *)lut->lut)[i]);
	}

	FUNC0(pf->dev, "VF %d: Programmed LUT starting with 0x%x and length %d ok!",
	    vf->vf_num, lut->lut[0], lut->lut_entries);

	FUNC8(pf, vf, VIRTCHNL_OP_CONFIG_RSS_LUT);
}