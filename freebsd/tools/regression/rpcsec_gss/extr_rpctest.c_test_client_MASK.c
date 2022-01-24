#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xdrproc_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef  int rpcvers_t ;
typedef  int rpcproc_t ;
typedef  scalar_t__ rpc_gss_service_t ;
typedef  int /*<<< orphan*/  rpc_gss_options_ret_t ;
struct TYPE_12__ {int time_req; int /*<<< orphan*/ * input_channel_bindings; int /*<<< orphan*/  my_cred; int /*<<< orphan*/  req_flags; } ;
typedef  TYPE_2__ rpc_gss_options_req_t ;
typedef  int /*<<< orphan*/  hostname ;
typedef  enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
struct TYPE_11__ {int re_errno; } ;
struct TYPE_14__ {int cf_stat; TYPE_1__ cf_error; } ;
struct TYPE_13__ {int /*<<< orphan*/ * cl_auth; } ;
typedef  TYPE_3__ CLIENT ;
typedef  int /*<<< orphan*/  AUTH ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_3__*,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,struct timeval) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  GSS_C_MUTUAL_FLAG ; 
 int /*<<< orphan*/  GSS_C_NO_CREDENTIAL ; 
 int RPC_SUCCESS ; 
 TYPE_3__* FUNC3 (char*,int,int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 TYPE_6__ rpc_createerr ; 
 char** FUNC9 () ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_3__*,char*,char const*,scalar_t__,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ rpc_gss_svc_none ; 
 scalar_t__ rpc_gss_svc_privacy ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*,int) ; 
 scalar_t__ xdr_int ; 

__attribute__((used)) static void
FUNC15(int argc, const char **argv)
{
	rpcproc_t prog = 123456;
	rpcvers_t vers = 1;
	const char *netid = "tcp";
	char hostname[128], service[128+5];
	CLIENT *client;
	AUTH *auth;
	const char **mechs;
	rpc_gss_options_req_t options_req;
	rpc_gss_options_ret_t options_ret;
	rpc_gss_service_t svc;
	struct timeval tv;
	enum clnt_stat stat;

	if (argc == 2)
		FUNC14(hostname, argv[1], sizeof(hostname));
	else
		FUNC7(hostname, sizeof(hostname));

	client = FUNC3(hostname, prog, vers, netid);
	if (!client) {
		FUNC8("rpc_createerr.cf_stat = %d\n",
		    rpc_createerr.cf_stat);
		FUNC8("rpc_createerr.cf_error.re_errno = %d\n",
		    rpc_createerr.cf_error.re_errno);
		return;
	}
	
	FUNC13(service, "host");
	FUNC12(service, "@");
	FUNC12(service, hostname);

	mechs = FUNC9();
	auth = NULL;
	while (*mechs) {
		options_req.req_flags = GSS_C_MUTUAL_FLAG;
		options_req.time_req = 600;
		options_req.my_cred = GSS_C_NO_CREDENTIAL;
		options_req.input_channel_bindings = NULL;
		auth = FUNC10(client, service,
		    *mechs,
		    rpc_gss_svc_none,
		    NULL,
		    &options_req,
		    &options_ret);
		if (auth)
			break;
		mechs++;
	}
	if (!auth) {
		FUNC4("rpc_gss_seccreate");
		FUNC8("Can't authenticate with server %s.\n",
		    hostname);
		FUNC6(1);
	}
	client->cl_auth = auth;

	for (svc = rpc_gss_svc_none; svc <= rpc_gss_svc_privacy; svc++) {
		const char *svc_names[] = {
			"rpc_gss_svc_default",
			"rpc_gss_svc_none",
			"rpc_gss_svc_integrity",
			"rpc_gss_svc_privacy"
		};
		int num;

		FUNC11(auth, svc, NULL);
		tv.tv_sec = 5;
		tv.tv_usec = 0;
		num = 42;
		stat = FUNC1(client, 1,
		    (xdrproc_t) xdr_int, (char *) &num,
		    (xdrproc_t) xdr_int, (char *) &num, tv);
		if (stat == RPC_SUCCESS) {
			FUNC8("succeeded with %s\n", svc_names[svc]);
			if (num != 142)
				FUNC8("unexpected reply %d\n", num);
		} else {
			FUNC5(client, "call failed");
		}
	}
	FUNC0(auth);
	FUNC2(client);
}