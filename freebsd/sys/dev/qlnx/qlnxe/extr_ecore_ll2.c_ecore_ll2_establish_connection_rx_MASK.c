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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_4__ {int ai_err_packet_too_big; int ai_err_no_buf; } ;
struct TYPE_3__ {int /*<<< orphan*/  set_prod_addr; } ;
struct ecore_ll2_info {TYPE_2__ input; TYPE_1__ rx_queue; } ;
struct ecore_hwfn {int dummy; } ;
typedef  enum ecore_ll2_error_handle { ____Placeholder_ecore_ll2_error_handle } ecore_ll2_error_handle ;
typedef  enum core_error_handle { ____Placeholder_core_error_handle } core_error_handle ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  CORE_RX_ACTION_ON_ERROR_NO_BUFF ; 
 int /*<<< orphan*/  CORE_RX_ACTION_ON_ERROR_PACKET_TOO_BIG ; 
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_ll2_info*) ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (struct ecore_hwfn*,struct ecore_ll2_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum _ecore_status_t FUNC5(struct ecore_hwfn *p_hwfn,
							      struct ecore_ll2_info *p_ll2_conn)
{
	enum ecore_ll2_error_handle error_input;
	enum core_error_handle error_mode;
	u8 action_on_error = 0;

	if (!FUNC1(p_ll2_conn))
		return ECORE_SUCCESS;

	FUNC0(p_hwfn, p_ll2_conn->rx_queue.set_prod_addr, 0x0);
	error_input = p_ll2_conn->input.ai_err_packet_too_big;
	error_mode = FUNC3(error_input);
	FUNC2(action_on_error,
		  CORE_RX_ACTION_ON_ERROR_PACKET_TOO_BIG, error_mode);
	error_input = p_ll2_conn->input.ai_err_no_buf;
	error_mode = FUNC3(error_input);
	FUNC2(action_on_error,
		  CORE_RX_ACTION_ON_ERROR_NO_BUFF, error_mode);

	return FUNC4(p_hwfn, p_ll2_conn, action_on_error);
}