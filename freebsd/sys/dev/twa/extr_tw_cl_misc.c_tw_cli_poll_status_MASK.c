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
typedef  scalar_t__ TW_UINT32 ;
typedef  scalar_t__ TW_TIME ;
typedef  int /*<<< orphan*/  TW_INT32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TW_OSL_ESUCCESS ; 
 int /*<<< orphan*/  TW_OSL_ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 () ; 

TW_INT32
FUNC5(struct tw_cli_ctlr_context *ctlr, TW_UINT32 status,
	TW_UINT32 timeout)
{
	TW_TIME		end_time;
	TW_UINT32	status_reg;

	FUNC1(4, ctlr->ctlr_handle, FUNC2(), "entered");

	end_time = FUNC4() + timeout;
	do {
		status_reg = FUNC0(ctlr->ctlr_handle);
		if ((status_reg & status) == status)
			/* got the required bit(s) */
			return(TW_OSL_ESUCCESS);

		FUNC3(1000);
	} while (FUNC4() <= end_time);

	return(TW_OSL_ETIMEDOUT);
}