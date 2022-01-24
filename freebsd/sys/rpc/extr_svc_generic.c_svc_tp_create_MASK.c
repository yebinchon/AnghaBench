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
struct netbuf {struct netbuf* buf; } ;
struct t_bind {int qlen; struct netbuf addr; } ;
struct netconfig {char* nc_netid; } ;
typedef  scalar_t__ rpcvers_t ;
typedef  scalar_t__ rpcprog_t ;
typedef  int /*<<< orphan*/  SVCXPRT ;
typedef  int /*<<< orphan*/  SVCPOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  M_RPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct netbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,struct netconfig*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,void (*) (struct svc_req*,int /*<<< orphan*/ *),struct netconfig const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct netconfig const*,struct t_bind*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct netbuf* FUNC6 (struct netconfig const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

SVCXPRT *
FUNC8(
	SVCPOOL *pool,
	void (*dispatch)(struct svc_req *, SVCXPRT *),
	rpcprog_t prognum,		/* Program number */
	rpcvers_t versnum,		/* Version number */
	const char *uaddr,		/* Address (or null for default) */
	const struct netconfig *nconf) /* Netconfig structure for the network */
{
	struct netconfig nconfcopy;
	struct netbuf *taddr;
	struct t_bind bind;
	SVCXPRT *xprt;

	if (nconf == NULL) {
		FUNC2(
	"svc_tp_create: invalid netconfig structure for prog %u vers %u\n",
				(unsigned)prognum, (unsigned)versnum);
		return (NULL);
	}
	if (uaddr) {
		taddr = FUNC6(nconf, uaddr);
		bind.addr = *taddr;
		FUNC1(taddr, M_RPC);
		bind.qlen = -1;
		xprt = FUNC5(pool, NULL, nconf, &bind, 0, 0);
		FUNC1(bind.addr.buf, M_RPC);
	} else {
		xprt = FUNC5(pool, NULL, nconf, NULL, 0, 0);
	}
	if (xprt == NULL) {
		return (NULL);
	}
	/*LINTED const castaway*/
	nconfcopy = *nconf;
	(void) FUNC3(prognum, versnum, &nconfcopy);
	if (FUNC4(xprt, prognum, versnum, dispatch, nconf) == FALSE) {
		FUNC2(
		"svc_tp_create: Could not register prog %u vers %u on %s\n",
				(unsigned)prognum, (unsigned)versnum,
				nconf->nc_netid);
		FUNC7(xprt);
		FUNC0(xprt);
		return (NULL);
	}
	return (xprt);
}