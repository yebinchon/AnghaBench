#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct socket {int so_state; TYPE_2__* so_proto; int /*<<< orphan*/  so_vnet; } ;
struct sockaddr {int /*<<< orphan*/  sa_len; } ;
struct TYPE_12__ {int xp_upcallset; int /*<<< orphan*/  xp_lock; int /*<<< orphan*/  xp_ltaddr; int /*<<< orphan*/ * xp_ops; int /*<<< orphan*/ * xp_p2; int /*<<< orphan*/ * xp_p1; struct socket* xp_socket; int /*<<< orphan*/ * xp_pool; } ;
struct TYPE_11__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_10__ {int (* pru_peeraddr ) (struct socket*,struct sockaddr**) ;int (* pru_sockaddr ) (struct socket*,struct sockaddr**) ;} ;
typedef  TYPE_3__ SVCXPRT ;
typedef  int /*<<< orphan*/  SVCPOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_SONAME ; 
 int /*<<< orphan*/  FUNC2 (struct socket*) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*) ; 
 int SS_ISCONNECTED ; 
 int SS_ISDISCONNECTED ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct socket*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct socket*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC10 (struct socket*,struct sockaddr**) ; 
 int FUNC11 (struct socket*,struct sockaddr**) ; 
 TYPE_3__* FUNC12 (int /*<<< orphan*/ *,struct socket*,struct sockaddr*) ; 
 int /*<<< orphan*/  svc_vc_rendezvous_ops ; 
 int /*<<< orphan*/  svc_vc_rendezvous_soupcall ; 
 TYPE_3__* FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 

SVCXPRT *
FUNC18(SVCPOOL *pool, struct socket *so, size_t sendsize,
    size_t recvsize)
{
	SVCXPRT *xprt;
	struct sockaddr* sa;
	int error;

	FUNC2(so);
	if (so->so_state & (SS_ISCONNECTED|SS_ISDISCONNECTED)) {
		FUNC3(so);
		FUNC1(so->so_vnet);
		error = so->so_proto->pr_usrreqs->pru_peeraddr(so, &sa);
		FUNC0();
		if (error)
			return (NULL);
		xprt = FUNC12(pool, so, sa);
		FUNC6(sa, M_SONAME);
		return (xprt);
	}
	FUNC3(so);

	xprt = FUNC13();
	FUNC16(&xprt->xp_lock, "xprt->xp_lock");
	xprt->xp_pool = pool;
	xprt->xp_socket = so;
	xprt->xp_p1 = NULL;
	xprt->xp_p2 = NULL;
	xprt->xp_ops = &svc_vc_rendezvous_ops;

	FUNC1(so->so_vnet);
	error = so->so_proto->pr_usrreqs->pru_sockaddr(so, &sa);
	FUNC0();
	if (error) {
		goto cleanup_svc_vc_create;
	}

	FUNC7(&xprt->xp_ltaddr, sa, sa->sa_len);
	FUNC6(sa, M_SONAME);

	FUNC17(xprt);

	FUNC8(so, -1, curthread);

	FUNC4(so);
	xprt->xp_upcallset = 1;
	FUNC9(so, svc_vc_rendezvous_soupcall, xprt);
	FUNC5(so);

	return (xprt);

cleanup_svc_vc_create:
	FUNC15(&xprt->xp_lock);
	FUNC14(xprt);

	return (NULL);
}