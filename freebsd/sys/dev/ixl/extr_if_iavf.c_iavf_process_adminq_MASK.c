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
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct virtchnl_msg {int /*<<< orphan*/  v_retval; int /*<<< orphan*/  v_opcode; } ;
struct i40e_hw {int dummy; } ;
struct iavf_sc {int /*<<< orphan*/  aq_buffer; struct i40e_hw hw; } ;
struct i40e_arq_event_info {int /*<<< orphan*/  msg_buf; int /*<<< orphan*/  msg_len; int /*<<< orphan*/  desc; int /*<<< orphan*/  buf_len; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;

/* Variables and functions */
 int I40E_ERR_ADMIN_QUEUE_CRITICAL_ERROR ; 
 int I40E_SUCCESS ; 
 int /*<<< orphan*/  I40E_VFINT_ICR0_ENA1 ; 
 int /*<<< orphan*/  I40E_VFINT_ICR0_ENA1_ADMINQ_MASK ; 
 int /*<<< orphan*/  IXL_ADM_LIMIT ; 
 int /*<<< orphan*/  IXL_AQ_BUF_SZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i40e_hw*,struct i40e_arq_event_info*,scalar_t__*) ; 
 int FUNC2 (struct iavf_sc*) ; 
 int /*<<< orphan*/  FUNC3 (struct iavf_sc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum i40e_status_code
FUNC6(struct iavf_sc *sc, u16 *pending)
{
	enum i40e_status_code status = I40E_SUCCESS;
	struct i40e_arq_event_info event;
	struct i40e_hw *hw = &sc->hw;
	struct virtchnl_msg *v_msg;
	int error = 0, loop = 0;
	u32 reg;

	error = FUNC2(sc);
	if (error)
		return (I40E_ERR_ADMIN_QUEUE_CRITICAL_ERROR);

	event.buf_len = IXL_AQ_BUF_SZ;
        event.msg_buf = sc->aq_buffer;
	FUNC0(event.msg_buf, IXL_AQ_BUF_SZ);
	v_msg = (struct virtchnl_msg *)&event.desc;

	/* clean and process any events */
	do {
		status = FUNC1(hw, &event, pending);
		/*
		 * Also covers normal case when i40e_clean_arq_element()
		 * returns "I40E_ERR_ADMIN_QUEUE_NO_WORK"
		 */
		if (status)
			break;
		FUNC3(sc, v_msg->v_opcode,
		    v_msg->v_retval, event.msg_buf, event.msg_len);
		FUNC0(event.msg_buf, IXL_AQ_BUF_SZ);
	} while (*pending && (loop++ < IXL_ADM_LIMIT));

	/* Re-enable admin queue interrupt cause */
	reg = FUNC4(hw, I40E_VFINT_ICR0_ENA1);
	reg |= I40E_VFINT_ICR0_ENA1_ADMINQ_MASK;
	FUNC5(hw, I40E_VFINT_ICR0_ENA1, reg);

	return (status);
}