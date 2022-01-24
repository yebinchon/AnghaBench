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
struct tw_cli_ctlr_context {scalar_t__ device_id; int /*<<< orphan*/  ctlr_handle; } ;
typedef  int TW_UINT32 ;
typedef  scalar_t__ TW_INT32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int TWA_STATUS_RESPONSE_QUEUE_EMPTY ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ TW_CL_DEVICE_ID_9K ; 
 scalar_t__ TW_OSL_ENOTTY ; 
 scalar_t__ TW_OSL_ESUCCESS ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

TW_INT32
FUNC7(struct tw_cli_ctlr_context *ctlr, TW_INT32 req_id)
{
	TW_UINT32	resp;
	TW_INT32	resp_id;
	TW_UINT32	status_reg;

	FUNC5(4, ctlr->ctlr_handle, FUNC6(), "entered");

	for (;;) {
		status_reg = FUNC4(ctlr->ctlr_handle);

		if (status_reg & TWA_STATUS_RESPONSE_QUEUE_EMPTY)
			return(TW_OSL_ENOTTY); /* no more response queue entries */

		if (ctlr->device_id == TW_CL_DEVICE_ID_9K) {
			resp = FUNC3(ctlr->ctlr_handle);
			resp_id = FUNC1(resp);
		} else {
			resp = FUNC2(
				ctlr->ctlr_handle);
			resp_id = FUNC0(resp);
		}
		if (resp_id == req_id)
			return(TW_OSL_ESUCCESS); /* found the req_id */
	}
}