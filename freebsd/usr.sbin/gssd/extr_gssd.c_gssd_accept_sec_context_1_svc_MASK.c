#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct svc_req {int dummy; } ;
typedef  int /*<<< orphan*/  gss_name_t ;
typedef  int /*<<< orphan*/  gss_ctx_id_t ;
typedef  int /*<<< orphan*/  gss_cred_id_t ;
typedef  int /*<<< orphan*/  bool_t ;
struct TYPE_6__ {void* delegated_cred_handle; void* src_name; void* ctx; scalar_t__ major_status; scalar_t__ minor_status; int /*<<< orphan*/  time_rec; int /*<<< orphan*/  ret_flags; int /*<<< orphan*/  output_token; int /*<<< orphan*/  mech_type; } ;
typedef  TYPE_1__ accept_sec_context_res ;
struct TYPE_7__ {void* ctx; int /*<<< orphan*/  input_chan_bindings; int /*<<< orphan*/  input_token; void* cred; } ;
typedef  TYPE_2__ accept_sec_context_args ;

/* Variables and functions */
 int /*<<< orphan*/  GSS_C_NO_CONTEXT ; 
 int /*<<< orphan*/  GSS_C_NO_CREDENTIAL ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_CONTEXT_EXPIRED ; 
 scalar_t__ GSS_S_CONTINUE_NEEDED ; 
 scalar_t__ GSS_S_CREDENTIALS_EXPIRED ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

bool_t
FUNC5(accept_sec_context_args *argp, accept_sec_context_res *result, struct svc_req *rqstp)
{
	gss_ctx_id_t ctx = GSS_C_NO_CONTEXT;
	gss_cred_id_t cred = GSS_C_NO_CREDENTIAL;
	gss_name_t src_name;
	gss_cred_id_t delegated_cred_handle;

	FUNC4(result, 0, sizeof(*result));
	if (argp->ctx) {
		ctx = FUNC1(argp->ctx);
		if (!ctx) {
			result->major_status = GSS_S_CONTEXT_EXPIRED;
			FUNC3("gssd_accept_sec_context: ctx"
			    " resource not found\n");
			return (TRUE);
		}
	}
	if (argp->cred) {
		cred = FUNC1(argp->cred);
		if (!cred) {
			result->major_status = GSS_S_CREDENTIALS_EXPIRED;
			FUNC3("gssd_accept_sec_context: cred"
			    " resource not found\n");
			return (TRUE);
		}
	}

	FUNC4(result, 0, sizeof(*result));
	result->major_status = FUNC0(&result->minor_status,
	    &ctx, cred, &argp->input_token, argp->input_chan_bindings,
	    &src_name, &result->mech_type, &result->output_token,
	    &result->ret_flags, &result->time_rec,
	    &delegated_cred_handle);
	FUNC3("gssd_accept_sec_context: done major=0x%x minor=%d\n",
	    (unsigned int)result->major_status, (int)result->minor_status);

	if (result->major_status == GSS_S_COMPLETE
	    || result->major_status == GSS_S_CONTINUE_NEEDED) {
		if (argp->ctx)
			result->ctx = argp->ctx;
		else
			result->ctx = FUNC2(ctx);
		result->src_name = FUNC2(src_name);
		result->delegated_cred_handle =
			FUNC2(delegated_cred_handle);
	}

	return (TRUE);
}