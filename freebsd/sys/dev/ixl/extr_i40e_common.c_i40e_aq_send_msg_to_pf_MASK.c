#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int /*<<< orphan*/  async; } ;
struct i40e_aq_desc {int /*<<< orphan*/  datalen; int /*<<< orphan*/  flags; void* cookie_low; void* cookie_high; } ;
typedef  enum virtchnl_ops { ____Placeholder_virtchnl_ops } virtchnl_ops ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;
typedef  int /*<<< orphan*/  details ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int I40E_AQ_FLAG_BUF ; 
 scalar_t__ I40E_AQ_FLAG_LB ; 
 int I40E_AQ_FLAG_RD ; 
 scalar_t__ I40E_AQ_FLAG_SI ; 
 int /*<<< orphan*/  I40E_AQ_LARGE_BUF ; 
 int /*<<< orphan*/  I40E_NONDMA_MEM ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  i40e_aqc_opc_send_msg_to_pf ; 
 int FUNC2 (struct i40e_hw*,struct i40e_aq_desc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct i40e_asq_cmd_details*) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_aq_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_asq_cmd_details*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

enum i40e_status_code FUNC5(struct i40e_hw *hw,
				enum virtchnl_ops v_opcode,
				enum i40e_status_code v_retval,
				u8 *msg, u16 msglen,
				struct i40e_asq_cmd_details *cmd_details)
{
	struct i40e_aq_desc desc;
	struct i40e_asq_cmd_details details;
	enum i40e_status_code status;

	FUNC3(&desc, i40e_aqc_opc_send_msg_to_pf);
	desc.flags |= FUNC0((u16)I40E_AQ_FLAG_SI);
	desc.cookie_high = FUNC1(v_opcode);
	desc.cookie_low = FUNC1(v_retval);
	if (msglen) {
		desc.flags |= FUNC0((u16)(I40E_AQ_FLAG_BUF
						| I40E_AQ_FLAG_RD));
		if (msglen > I40E_AQ_LARGE_BUF)
			desc.flags |= FUNC0((u16)I40E_AQ_FLAG_LB);
		desc.datalen = FUNC0(msglen);
	}
	if (!cmd_details) {
		FUNC4(&details, 0, sizeof(details), I40E_NONDMA_MEM);
		details.async = TRUE;
		cmd_details = &details;
	}
	status = FUNC2(hw, (struct i40e_aq_desc *)&desc, msg,
				       msglen, cmd_details);
	return status;
}