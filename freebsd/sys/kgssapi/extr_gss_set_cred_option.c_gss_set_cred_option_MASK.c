#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct set_cred_option_res {scalar_t__ major_status; scalar_t__ minor_status; } ;
struct set_cred_option_args {int /*<<< orphan*/  option_value; int /*<<< orphan*/  option_name; scalar_t__ cred; } ;
typedef  int /*<<< orphan*/  res ;
typedef  TYPE_1__* gss_cred_id_t ;
typedef  int /*<<< orphan*/ * gss_buffer_t ;
typedef  int /*<<< orphan*/  gss_OID ;
typedef  enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
struct TYPE_3__ {scalar_t__ handle; } ;
typedef  scalar_t__ OM_uint32 ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_FAILURE ; 
 int RPC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct set_cred_option_res*,int) ; 
 int FUNC2 (struct set_cred_option_args*,struct set_cred_option_res*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 

OM_uint32
FUNC4(OM_uint32 *minor_status,
	       gss_cred_id_t *cred,
	       const gss_OID option_name,
	       const gss_buffer_t option_value)
{
	struct set_cred_option_res res;
	struct set_cred_option_args args;
	enum clnt_stat stat;
	CLIENT *cl;

	*minor_status = 0;

	cl = FUNC3();
	if (cl == NULL)
		return (GSS_S_FAILURE);

	if (cred)
		args.cred = (*cred)->handle;
	else
		args.cred = 0;
	args.option_name = option_name;
	args.option_value = *option_value;

	FUNC1(&res, sizeof(res));
	stat = FUNC2(&args, &res, cl);
	FUNC0(cl);

	if (stat != RPC_SUCCESS) {
		*minor_status = stat;
		return (GSS_S_FAILURE);
	}

	if (res.major_status != GSS_S_COMPLETE) {
		*minor_status = res.minor_status;
		return (res.major_status);
	}

	return (GSS_S_COMPLETE);
}