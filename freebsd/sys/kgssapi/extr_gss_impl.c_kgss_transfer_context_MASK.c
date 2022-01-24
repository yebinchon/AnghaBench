#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xdrproc_t ;
struct export_sec_context_res {int /*<<< orphan*/  interprocess_token; int /*<<< orphan*/  format; } ;
struct export_sec_context_args {scalar_t__ ctx; } ;
typedef  int /*<<< orphan*/  res ;
typedef  TYPE_1__* gss_ctx_id_t ;
typedef  enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
struct TYPE_4__ {scalar_t__ handle; } ;
typedef  int /*<<< orphan*/  OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  GSS_S_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int RPC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct export_sec_context_res*,int) ; 
 int FUNC2 (struct export_sec_context_args*,struct export_sec_context_res*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kgss_gssd_handle ; 
 scalar_t__ xdr_export_sec_context_res ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct export_sec_context_res*) ; 

OM_uint32
FUNC4(gss_ctx_id_t ctx)
{
	struct export_sec_context_res res;
	struct export_sec_context_args args;
	enum clnt_stat stat;
	OM_uint32 maj_stat;

	if (!kgss_gssd_handle)
		return (GSS_S_FAILURE);

	args.ctx = ctx->handle;
	FUNC1(&res, sizeof(res));
	stat = FUNC2(&args, &res, kgss_gssd_handle);
	if (stat != RPC_SUCCESS) {
		return (GSS_S_FAILURE);
	}

	maj_stat = FUNC0(ctx, res.format, &res.interprocess_token);
	ctx->handle = 0;

	FUNC3((xdrproc_t) xdr_export_sec_context_res, &res);

	return (maj_stat);
}