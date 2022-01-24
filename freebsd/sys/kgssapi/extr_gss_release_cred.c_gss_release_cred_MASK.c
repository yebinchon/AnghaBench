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
struct release_cred_res {int minor_status; int major_status; } ;
struct release_cred_args {int /*<<< orphan*/  cred; } ;
typedef  TYPE_1__* gss_cred_id_t ;
typedef  enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
struct TYPE_4__ {int /*<<< orphan*/  handle; } ;
typedef  int OM_uint32 ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int GSS_S_COMPLETE ; 
 int GSS_S_FAILURE ; 
 int /*<<< orphan*/  M_GSSAPI ; 
 int RPC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct release_cred_args*,struct release_cred_res*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  kgss_gssd_handle ; 

OM_uint32
FUNC4(OM_uint32 *minor_status, gss_cred_id_t *cred_handle)
{
	struct release_cred_res res;
	struct release_cred_args args;
	enum clnt_stat stat;
	CLIENT *cl;

	*minor_status = 0;

	if (!kgss_gssd_handle)
		return (GSS_S_FAILURE);

	if (*cred_handle) {
		args.cred = (*cred_handle)->handle;

		cl = FUNC3();
		if (cl == NULL)
			return (GSS_S_FAILURE);
		stat = FUNC2(&args, &res, cl);
		FUNC0(cl);
		if (stat != RPC_SUCCESS) {
			*minor_status = stat;
			return (GSS_S_FAILURE);
		}

		FUNC1((*cred_handle), M_GSSAPI);
		*cred_handle = NULL;

		*minor_status = res.minor_status;
		return (res.major_status);
	}

	return (GSS_S_COMPLETE);
}