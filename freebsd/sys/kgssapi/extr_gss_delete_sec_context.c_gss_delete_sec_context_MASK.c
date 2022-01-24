#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xdrproc_t ;
struct delete_sec_context_res {int /*<<< orphan*/  output_token; } ;
struct delete_sec_context_args {scalar_t__ ctx; } ;
typedef  int /*<<< orphan*/  res ;
typedef  TYPE_1__* gss_ctx_id_t ;
typedef  TYPE_2__* gss_buffer_t ;
typedef  enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
struct TYPE_9__ {int /*<<< orphan*/ * value; scalar_t__ length; } ;
struct TYPE_8__ {scalar_t__ handle; } ;
typedef  int OM_uint32 ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int GSS_S_COMPLETE ; 
 int GSS_S_FAILURE ; 
 int RPC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct delete_sec_context_res*,int) ; 
 int FUNC2 (struct delete_sec_context_args*,struct delete_sec_context_res*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  kgss_gssd_handle ; 
 scalar_t__ xdr_delete_sec_context_res ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct delete_sec_context_res*) ; 

OM_uint32
FUNC7(OM_uint32 *minor_status, gss_ctx_id_t *context_handle,
	gss_buffer_t output_token)
{
	struct delete_sec_context_res res;
	struct delete_sec_context_args args;
	enum clnt_stat stat;
	gss_ctx_id_t ctx;
	CLIENT *cl;

	*minor_status = 0;

	if (!kgss_gssd_handle)
		return (GSS_S_FAILURE);

	if (*context_handle) {
		ctx = *context_handle;

		/*
		 * If we are past the context establishment phase, let
		 * the in-kernel code do the delete, otherwise
		 * userland needs to deal with it.
		 */
		if (ctx->handle) {
			args.ctx = ctx->handle;
			cl = FUNC5();
			if (cl == NULL)
				return (GSS_S_FAILURE);
	
			FUNC1(&res, sizeof(res));
			stat = FUNC2(&args, &res, cl);
			FUNC0(cl);
			if (stat != RPC_SUCCESS) {
				*minor_status = stat;
				return (GSS_S_FAILURE);
			}

			if (output_token)
				FUNC3(&res.output_token,
				    output_token);
			FUNC6((xdrproc_t) xdr_delete_sec_context_res, &res);

			FUNC4(ctx, NULL);
		} else {
			FUNC4(ctx, output_token);
		}
		*context_handle = NULL;
	} else {
		if (output_token) {
			output_token->length = 0;
			output_token->value = NULL;
		}
	}

	return (GSS_S_COMPLETE);
}