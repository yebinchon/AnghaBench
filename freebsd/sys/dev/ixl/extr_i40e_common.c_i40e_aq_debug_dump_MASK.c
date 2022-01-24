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
typedef  void* u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_debug_dump_internals {int /*<<< orphan*/  idx; void* table_id; void* cluster_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  raw; } ;
struct i40e_aq_desc {int /*<<< orphan*/  datalen; int /*<<< orphan*/  flags; TYPE_1__ params; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ I40E_AQ_FLAG_BUF ; 
 scalar_t__ I40E_AQ_FLAG_LB ; 
 int /*<<< orphan*/  I40E_AQ_LARGE_BUF ; 
 int I40E_ERR_PARAM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i40e_aqc_opc_debug_dump_internals ; 
 int FUNC4 (struct i40e_hw*,struct i40e_aq_desc*,void*,int /*<<< orphan*/ ,struct i40e_asq_cmd_details*) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_aq_desc*,int /*<<< orphan*/ ) ; 

enum i40e_status_code FUNC6(struct i40e_hw *hw, u8 cluster_id,
				u8 table_id, u32 start_index, u16 buff_size,
				void *buff, u16 *ret_buff_size,
				u8 *ret_next_table, u32 *ret_next_index,
				struct i40e_asq_cmd_details *cmd_details)
{
	struct i40e_aq_desc desc;
	struct i40e_aqc_debug_dump_internals *cmd =
		(struct i40e_aqc_debug_dump_internals *)&desc.params.raw;
	struct i40e_aqc_debug_dump_internals *resp =
		(struct i40e_aqc_debug_dump_internals *)&desc.params.raw;
	enum i40e_status_code status;

	if (buff_size == 0 || !buff)
		return I40E_ERR_PARAM;

	FUNC5(&desc,
					  i40e_aqc_opc_debug_dump_internals);
	/* Indirect Command */
	desc.flags |= FUNC0((u16)I40E_AQ_FLAG_BUF);
	if (buff_size > I40E_AQ_LARGE_BUF)
		desc.flags |= FUNC0((u16)I40E_AQ_FLAG_LB);

	cmd->cluster_id = cluster_id;
	cmd->table_id = table_id;
	cmd->idx = FUNC1(start_index);

	desc.datalen = FUNC0(buff_size);

	status = FUNC4(hw, &desc, buff, buff_size, cmd_details);
	if (!status) {
		if (ret_buff_size != NULL)
			*ret_buff_size = FUNC2(desc.datalen);
		if (ret_next_table != NULL)
			*ret_next_table = resp->table_id;
		if (ret_next_index != NULL)
			*ret_next_index = FUNC3(resp->idx);
	}

	return status;
}