#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xdrproc_t ;
struct netconfig {int /*<<< orphan*/  nc_netid; } ;
struct netbuf {int dummy; } ;
typedef  int /*<<< orphan*/  rpcvers_t ;
typedef  int /*<<< orphan*/  rpcprog_t ;
typedef  int /*<<< orphan*/  rpcproc_t ;
typedef  int /*<<< orphan*/  bool_t ;
struct TYPE_4__ {int /*<<< orphan*/  cf_stat; } ;
struct TYPE_3__ {char* r_owner; int /*<<< orphan*/  r_addr; int /*<<< orphan*/  r_netid; int /*<<< orphan*/  r_vers; int /*<<< orphan*/  r_prog; } ;
typedef  TYPE_1__ RPCB ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  M_RPC ; 
 scalar_t__ RPCBPROC_SET ; 
 int /*<<< orphan*/  RPC_N2AXLATEFAILURE ; 
 int /*<<< orphan*/  RPC_UNKNOWNADDR ; 
 int /*<<< orphan*/  RPC_UNKNOWNPROTO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 TYPE_2__ rpc_createerr ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct netconfig*,struct netbuf*) ; 
 int /*<<< orphan*/  tottimeout ; 
 scalar_t__ xdr_bool ; 
 scalar_t__ xdr_rpcb ; 

bool_t
FUNC7(rpcprog_t program, rpcvers_t version,
    const struct netconfig *nconf,	/* Network structure of transport */
    const struct netbuf *address)	/* Services netconfig address */
{
	CLIENT *client;
	bool_t rslt = FALSE;
	RPCB parms;
#if 0
	char uidbuf[32];
#endif
	struct netconfig nconfcopy;
	struct netbuf addresscopy;

	/* parameter checking */
	if (nconf == NULL) {
		rpc_createerr.cf_stat = RPC_UNKNOWNPROTO;
		return (FALSE);
	}
	if (address == NULL) {
		rpc_createerr.cf_stat = RPC_UNKNOWNADDR;
		return (FALSE);
	}
	client = FUNC4();
	if (! client) {
		return (FALSE);
	}

	/* convert to universal */
	/*LINTED const castaway*/
	nconfcopy = *nconf;
	addresscopy = *address;
	parms.r_addr = FUNC6(&nconfcopy, &addresscopy);
	if (!parms.r_addr) {
		FUNC1(client);
		rpc_createerr.cf_stat = RPC_N2AXLATEFAILURE;
		return (FALSE); /* no universal address */
	}
	parms.r_prog = program;
	parms.r_vers = version;
	parms.r_netid = nconf->nc_netid;
#if 0
	/*
	 * Though uid is not being used directly, we still send it for
	 * completeness.  For non-unix platforms, perhaps some other
	 * string or an empty string can be sent.
	 */
	(void) snprintf(uidbuf, sizeof uidbuf, "%d", geteuid());
	parms.r_owner = uidbuf;
#else
	parms.r_owner = "";
#endif

	FUNC0(client, (rpcproc_t)RPCBPROC_SET, (xdrproc_t) xdr_rpcb,
	    (char *)(void *)&parms, (xdrproc_t) xdr_bool,
	    (char *)(void *)&rslt, tottimeout);

	FUNC1(client);
	FUNC2(parms.r_addr, M_RPC);
	return (rslt);
}