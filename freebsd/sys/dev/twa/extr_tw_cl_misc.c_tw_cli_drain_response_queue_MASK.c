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
struct tw_cli_ctlr_context {int /*<<< orphan*/  ctlr_handle; } ;
typedef  int TW_UINT32 ;
typedef  int /*<<< orphan*/  TW_INT32 ;

/* Variables and functions */
 int TWA_STATUS_RESPONSE_QUEUE_EMPTY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TW_OSL_ESUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

TW_INT32
FUNC4(struct tw_cli_ctlr_context *ctlr)
{
	TW_UINT32	resp;
	TW_UINT32	status_reg;

	FUNC2(4, ctlr->ctlr_handle, FUNC3(), "entered");

	for (;;) {
		status_reg = FUNC1(ctlr->ctlr_handle);

		if (status_reg & TWA_STATUS_RESPONSE_QUEUE_EMPTY)
			return(TW_OSL_ESUCCESS); /* no more response queue entries */

		resp = FUNC0(ctlr->ctlr_handle);
	}
}