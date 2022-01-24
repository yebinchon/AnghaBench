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
typedef  int /*<<< orphan*/  xdrproc_t ;
struct display_status_res {scalar_t__ major_status; scalar_t__ minor_status; scalar_t__ message_context; int /*<<< orphan*/  status_string; } ;
struct display_status_args {int status_type; scalar_t__ message_context; int /*<<< orphan*/  mech_type; scalar_t__ status_value; } ;
typedef  int /*<<< orphan*/  res ;
typedef  int /*<<< orphan*/  gss_buffer_t ;
typedef  int /*<<< orphan*/  gss_OID ;
typedef  enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef  scalar_t__ OM_uint32 ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_FAILURE ; 
 int RPC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct display_status_res*,int) ; 
 int FUNC2 (struct display_status_args*,struct display_status_res*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ xdr_display_status_res ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct display_status_res*) ; 

OM_uint32
FUNC6(OM_uint32 *minor_status,
    OM_uint32 status_value,
    int status_type,
    const gss_OID mech_type,
    OM_uint32 *message_context,
    gss_buffer_t status_string)            /* status_string */
{
	struct display_status_res res;
	struct display_status_args args;
	enum clnt_stat stat;
	CLIENT *cl;

	*minor_status = 0;
	cl = FUNC4();
	if (cl == NULL)
		return (GSS_S_FAILURE);

	args.status_value = status_value;
	args.status_type = status_type;
	args.mech_type = mech_type;
	args.message_context = *message_context;
	
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

	*message_context = res.message_context;
	FUNC3(&res.status_string, status_string);
	FUNC5((xdrproc_t) xdr_display_status_res, &res);

	return (GSS_S_COMPLETE);
}