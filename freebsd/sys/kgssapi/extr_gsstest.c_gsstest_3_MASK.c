#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xdrproc_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct TYPE_11__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int sin_len; scalar_t__ sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  sin ;
typedef  int /*<<< orphan*/  service ;
typedef  scalar_t__ rpc_gss_service_t ;
struct TYPE_12__ {char const* actual_mechanism; int /*<<< orphan*/  minor_status; int /*<<< orphan*/  major_status; } ;
typedef  TYPE_2__ rpc_gss_options_ret_t ;
typedef  int /*<<< orphan*/  gss_OID ;
typedef  enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
struct TYPE_14__ {int /*<<< orphan*/  td_ucred; } ;
struct TYPE_13__ {int /*<<< orphan*/ * cl_auth; } ;
typedef  TYPE_3__ CLIENT ;
typedef  int /*<<< orphan*/  AUTH ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_3__*,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,struct timeval) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  GSS_C_NO_OID ; 
 int /*<<< orphan*/  INADDR_LOOPBACK ; 
 int RPC_SUCCESS ; 
 TYPE_7__* curthread ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_3__* FUNC5 (struct sockaddr*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,char*,char*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ rpc_gss_svc_none ; 
 scalar_t__ rpc_gss_svc_privacy ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 scalar_t__ xdr_int ; 

__attribute__((used)) static int
FUNC13(struct thread *td)
{
	struct sockaddr_in sin;
	char service[128];
	CLIENT *client;
	AUTH *auth;
	rpc_gss_options_ret_t options_ret;
	enum clnt_stat stat;
	struct timeval tv;
	rpc_gss_service_t svc;
	int i;

	sin.sin_len = sizeof(sin);
	sin.sin_family = AF_INET;
	sin.sin_addr.s_addr = FUNC6(INADDR_LOOPBACK);
	sin.sin_port = 0;

	client = FUNC5((struct sockaddr *) &sin, 123456, 1);
	if (!client) {
		FUNC12("Can't connect to service\n");
		return(1);
	}

	FUNC7(service, "host@", 5);
	FUNC4(td->td_ucred, service + 5, sizeof(service) - 5);

	auth = FUNC10(client, curthread->td_ucred,
	    service, "kerberosv5", rpc_gss_svc_privacy,
	    NULL, NULL, &options_ret);
	if (!auth) {
		gss_OID oid;
		FUNC12("Can't authorize to service (mech=%s)\n",
			options_ret.actual_mechanism);
		oid = GSS_C_NO_OID;
		FUNC9(options_ret.actual_mechanism, &oid);
		FUNC8(oid, options_ret.major_status,
		    options_ret.minor_status);
		FUNC2(client);
		return (1);
	}

	for (svc = rpc_gss_svc_none; svc <= rpc_gss_svc_privacy; svc++) {
		const char *svc_names[] = {
			"rpc_gss_svc_default",
			"rpc_gss_svc_none",
			"rpc_gss_svc_integrity",
			"rpc_gss_svc_privacy"
		};
		int num;

		FUNC11(auth, svc, NULL);

		client->cl_auth = auth;
		tv.tv_sec = 5;
		tv.tv_usec = 0;
		for (i = 42; i < 142; i++) {
			num = i;
			stat = FUNC1(client, 1,
			    (xdrproc_t) xdr_int, (char *) &num,
			    (xdrproc_t) xdr_int, (char *) &num, tv);
			if (stat == RPC_SUCCESS) {
				if (num != i + 100)
					FUNC12("unexpected reply %d\n", num);
			} else {
				FUNC12("call failed, stat=%d\n", (int) stat);
				break;
			}
		}
		if (i == 142)
			FUNC12("call succeeded with %s\n", svc_names[svc]);
	}

	FUNC0(auth);
	FUNC3(client);

	return (0);
}