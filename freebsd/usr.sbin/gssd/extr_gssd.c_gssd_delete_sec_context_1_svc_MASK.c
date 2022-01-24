#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct svc_req {int dummy; } ;
typedef  scalar_t__ gss_ctx_id_t ;
struct TYPE_5__ {scalar_t__ minor_status; scalar_t__ major_status; int /*<<< orphan*/  output_token; } ;
typedef  TYPE_1__ delete_sec_context_res ;
struct TYPE_6__ {int /*<<< orphan*/  ctx; } ;
typedef  TYPE_2__ delete_sec_context_args ;
typedef  int /*<<< orphan*/  bool_t ;

/* Variables and functions */
 scalar_t__ GSS_S_COMPLETE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,int) ; 

bool_t
FUNC4(delete_sec_context_args *argp, delete_sec_context_res *result, struct svc_req *rqstp)
{
	gss_ctx_id_t ctx = FUNC2(argp->ctx);

	if (ctx) {
		result->major_status = FUNC0(
			&result->minor_status, &ctx, &result->output_token);
		FUNC1(argp->ctx);
	} else {
		result->major_status = GSS_S_COMPLETE;
		result->minor_status = 0;
	}
	FUNC3("gssd_delete_sec_context: done major=0x%x minor=%d\n",
	    (unsigned int)result->major_status, (int)result->minor_status);

	return (TRUE);
}