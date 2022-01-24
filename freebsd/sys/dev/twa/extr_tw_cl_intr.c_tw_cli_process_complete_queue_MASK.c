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
struct tw_cli_req_context {int /*<<< orphan*/  (* tw_cli_callback ) (struct tw_cli_req_context*) ;} ;
struct tw_cli_ctlr_context {int /*<<< orphan*/  ctlr_handle; } ;
typedef  int /*<<< orphan*/  TW_VOID ;

/* Variables and functions */
 int /*<<< orphan*/  TW_CLI_COMPLETE_Q ; 
 struct tw_cli_req_context* TW_CL_NULL ; 
 int /*<<< orphan*/  FUNC0 (struct tw_cli_req_context*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct tw_cli_req_context* FUNC2 (struct tw_cli_ctlr_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

TW_VOID
FUNC4(struct tw_cli_ctlr_context *ctlr)
{
	struct tw_cli_req_context	*req;
    
	FUNC1(10, ctlr->ctlr_handle, FUNC3(), "entered");

	/*
	 * Pull commands off the completed list, dispatch them appropriately.
	 */
	while ((req = FUNC2(ctlr, TW_CLI_COMPLETE_Q)) !=
		TW_CL_NULL) {
		/* Call the CL internal callback, if there's one. */
		if (req->tw_cli_callback)
			req->tw_cli_callback(req);
	}
}