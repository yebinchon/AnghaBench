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
typedef  scalar_t__ u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_add_tag {void* queue_number; void* flags; void* tag; void* seid; } ;
struct i40e_aqc_add_remove_tag_completion {int /*<<< orphan*/  tags_free; int /*<<< orphan*/  tags_used; } ;
struct TYPE_2__ {int /*<<< orphan*/  raw; } ;
struct i40e_aq_desc {TYPE_1__ params; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;

/* Variables and functions */
 void* FUNC0 (scalar_t__) ; 
 scalar_t__ I40E_AQC_ADD_TAG_FLAG_TO_QUEUE ; 
 int I40E_ERR_PARAM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i40e_aqc_opc_add_tag ; 
 int FUNC2 (struct i40e_hw*,struct i40e_aq_desc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct i40e_asq_cmd_details*) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_aq_desc*,int /*<<< orphan*/ ) ; 

enum i40e_status_code FUNC4(struct i40e_hw *hw, bool direct_to_queue,
				u16 vsi_seid, u16 tag, u16 queue_num,
				u16 *tags_used, u16 *tags_free,
				struct i40e_asq_cmd_details *cmd_details)
{
	struct i40e_aq_desc desc;
	struct i40e_aqc_add_tag *cmd =
		(struct i40e_aqc_add_tag *)&desc.params.raw;
	struct i40e_aqc_add_remove_tag_completion *resp =
		(struct i40e_aqc_add_remove_tag_completion *)&desc.params.raw;
	enum i40e_status_code status;

	if (vsi_seid == 0)
		return I40E_ERR_PARAM;

	FUNC3(&desc, i40e_aqc_opc_add_tag);

	cmd->seid = FUNC0(vsi_seid);
	cmd->tag = FUNC0(tag);
	if (direct_to_queue) {
		cmd->flags = FUNC0(I40E_AQC_ADD_TAG_FLAG_TO_QUEUE);
		cmd->queue_number = FUNC0(queue_num);
	}

	status = FUNC2(hw, &desc, NULL, 0, cmd_details);

	if (!status) {
		if (tags_used != NULL)
			*tags_used = FUNC1(resp->tags_used);
		if (tags_free != NULL)
			*tags_free = FUNC1(resp->tags_free);
	}

	return status;
}