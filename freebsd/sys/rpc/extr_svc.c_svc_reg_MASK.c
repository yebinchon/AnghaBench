#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct svc_callout {void (* sc_dispatch ) (struct svc_req*,TYPE_2__*) ;char* sc_netid; int /*<<< orphan*/  sc_vers; int /*<<< orphan*/  sc_prog; } ;
struct netconfig {char* nc_netid; } ;
struct netbuf {int /*<<< orphan*/  len; TYPE_1__* buf; } ;
typedef  int /*<<< orphan*/  rpcvers_t ;
typedef  int /*<<< orphan*/  rpcprog_t ;
typedef  int /*<<< orphan*/  bool_t ;
struct TYPE_10__ {int /*<<< orphan*/  sp_lock; int /*<<< orphan*/  sp_callouts; } ;
struct TYPE_8__ {int /*<<< orphan*/  ss_len; } ;
struct TYPE_9__ {char* xp_netid; TYPE_1__ xp_ltaddr; TYPE_4__* xp_pool; } ;
typedef  TYPE_2__ SVCXPRT ;
typedef  TYPE_4__ SVCPOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_RPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct svc_callout*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 struct svc_callout* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,struct netconfig*,struct netbuf*) ; 
 int /*<<< orphan*/  sc_link ; 
 void* FUNC6 (char*,int /*<<< orphan*/ ) ; 
 struct svc_callout* FUNC7 (TYPE_4__*,int /*<<< orphan*/  const,int /*<<< orphan*/  const,char*) ; 

bool_t
FUNC8(SVCXPRT *xprt, const rpcprog_t prog, const rpcvers_t vers,
    void (*dispatch)(struct svc_req *, SVCXPRT *),
    const struct netconfig *nconf)
{
	SVCPOOL *pool = xprt->xp_pool;
	struct svc_callout *s;
	char *netid = NULL;
	int flag = 0;

/* VARIABLES PROTECTED BY svc_lock: s, svc_head */

	if (xprt->xp_netid) {
		netid = FUNC6(xprt->xp_netid, M_RPC);
		flag = 1;
	} else if (nconf && nconf->nc_netid) {
		netid = FUNC6(nconf->nc_netid, M_RPC);
		flag = 1;
	} /* must have been created with svc_raw_create */
	if ((netid == NULL) && (flag == 1)) {
		return (FALSE);
	}

	FUNC3(&pool->sp_lock);
	if ((s = FUNC7(pool, prog, vers, netid)) != NULL) {
		if (netid)
			FUNC1(netid, M_RPC);
		if (s->sc_dispatch == dispatch)
			goto rpcb_it; /* he is registering another xptr */
		FUNC4(&pool->sp_lock);
		return (FALSE);
	}
	s = FUNC2(sizeof (struct svc_callout), M_RPC, M_NOWAIT);
	if (s == NULL) {
		if (netid)
			FUNC1(netid, M_RPC);
		FUNC4(&pool->sp_lock);
		return (FALSE);
	}

	s->sc_prog = prog;
	s->sc_vers = vers;
	s->sc_dispatch = dispatch;
	s->sc_netid = netid;
	FUNC0(&pool->sp_callouts, s, sc_link);

	if ((xprt->xp_netid == NULL) && (flag == 1) && netid)
		((SVCXPRT *) xprt)->xp_netid = FUNC6(netid, M_RPC);

rpcb_it:
	FUNC4(&pool->sp_lock);
	/* now register the information with the local binder service */
	if (nconf) {
		bool_t dummy;
		struct netconfig tnc;
		struct netbuf nb;
		tnc = *nconf;
		nb.buf = &xprt->xp_ltaddr;
		nb.len = xprt->xp_ltaddr.ss_len;
		dummy = FUNC5(prog, vers, &tnc, &nb);
		return (dummy);
	}
	return (TRUE);
}