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
struct virtchnl_rss_key {int key_len; int /*<<< orphan*/ * key; int /*<<< orphan*/  vsi_id; } ;
struct TYPE_5__ {int /*<<< orphan*/  vsi_num; } ;
struct ixl_vf {int /*<<< orphan*/  vf_num; TYPE_2__ vsi; } ;
struct TYPE_6__ {int /*<<< orphan*/  asq_last_status; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct i40e_hw {TYPE_3__ aq; TYPE_1__ mac; } ;
struct ixl_pf {int /*<<< orphan*/  dev; struct i40e_hw hw; } ;
struct i40e_aqc_get_set_rss_key_data {int /*<<< orphan*/  extended_hash_key; int /*<<< orphan*/  standard_rss_key; } ;
typedef  int /*<<< orphan*/  key_data ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  I40E_ERR_ADMIN_QUEUE_ERROR ; 
 int /*<<< orphan*/  I40E_ERR_PARAM ; 
 scalar_t__ I40E_MAC_X722 ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VIRTCHNL_OP_CONFIG_RSS_KEY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_aqc_get_set_rss_key_data*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,...) ; 
 int FUNC5 (struct i40e_hw*,int /*<<< orphan*/ ,struct i40e_aqc_get_set_rss_key_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ixl_pf*,struct ixl_vf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i40e_hw*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ixl_pf*,struct ixl_vf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(struct ixl_pf *pf, struct ixl_vf *vf, void *msg,
    uint16_t msg_size)
{
	struct i40e_hw *hw;
	struct virtchnl_rss_key *key;
	struct i40e_aqc_get_set_rss_key_data key_data;
	enum i40e_status_code status;

	hw = &pf->hw;

	if (msg_size < sizeof(*key)) {
		FUNC7(pf, vf, VIRTCHNL_OP_CONFIG_RSS_KEY,
		    I40E_ERR_PARAM);
		return;
	}

	key = msg;

	if (key->key_len > 52) {
		FUNC4(pf->dev, "VF %d: Key size in msg (%d) is greater than max key size (%d)\n",
		    vf->vf_num, key->key_len, 52);
		FUNC7(pf, vf, VIRTCHNL_OP_CONFIG_RSS_KEY,
		    I40E_ERR_PARAM);
		return;
	}

	if (key->vsi_id != vf->vsi.vsi_num) {
		FUNC4(pf->dev, "VF %d: VSI id in recvd message (%d) does not match expected id (%d)\n",
		    vf->vf_num, key->vsi_id, vf->vsi.vsi_num);
		FUNC7(pf, vf, VIRTCHNL_OP_CONFIG_RSS_KEY,
		    I40E_ERR_PARAM);
		return;
	}

	/* Fill out hash using MAC-dependent method */
	if (hw->mac.type == I40E_MAC_X722) {
		FUNC3(&key_data, sizeof(key_data));
		if (key->key_len <= 40)
			FUNC2(key->key, key_data.standard_rss_key, key->key_len);
		else {
			FUNC2(key->key, key_data.standard_rss_key, 40);
			FUNC2(&key->key[40], key_data.extended_hash_key, key->key_len - 40);
		}
		status = FUNC5(hw, vf->vsi.vsi_num, &key_data);
		if (status) {
			FUNC4(pf->dev, "i40e_aq_set_rss_key status %s, error %s\n",
			    FUNC8(hw, status), FUNC6(hw, hw->aq.asq_last_status));
			FUNC7(pf, vf, VIRTCHNL_OP_CONFIG_RSS_KEY,
			    I40E_ERR_ADMIN_QUEUE_ERROR);
			return;
		}
	} else {
		for (int i = 0; i < (key->key_len / 4); i++)
			FUNC9(hw, FUNC1(i, vf->vf_num), ((u32 *)key->key)[i]);
	}

	FUNC0(pf->dev, "VF %d: Programmed key starting with 0x%x ok!",
	    vf->vf_num, key->key[0]);

	FUNC10(pf, vf, VIRTCHNL_OP_CONFIG_RSS_KEY);
}