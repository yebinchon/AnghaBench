#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct socket {int /*<<< orphan*/  so_rcv; TYPE_2__* so_proto; int /*<<< orphan*/  so_vnet; } ;
struct sockaddr {int /*<<< orphan*/  sa_len; } ;
struct __rpc_sockinfo {int /*<<< orphan*/  si_proto; int /*<<< orphan*/  si_af; } ;
struct TYPE_11__ {int /*<<< orphan*/  xp_ltaddr; int /*<<< orphan*/ * xp_ops; int /*<<< orphan*/ * xp_p2; int /*<<< orphan*/ * xp_p1; struct socket* xp_socket; int /*<<< orphan*/ * xp_pool; int /*<<< orphan*/  xp_lock; } ;
struct TYPE_10__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_9__ {int (* pru_sockaddr ) (struct socket*,struct sockaddr**) ;} ;
typedef  TYPE_3__ SVCXPRT ;
typedef  int /*<<< orphan*/  SVCPOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_SONAME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SO_RCV ; 
 int /*<<< orphan*/  __no_mem_str ; 
 size_t FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*,struct __rpc_sockinfo*) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC10 (struct socket*,struct sockaddr**) ; 
 int /*<<< orphan*/  svc_dg_err1 ; 
 int /*<<< orphan*/  svc_dg_err2 ; 
 int /*<<< orphan*/  svc_dg_ops ; 
 int /*<<< orphan*/  svc_dg_soupcall ; 
 char* svc_dg_str ; 
 TYPE_3__* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 

SVCXPRT *
FUNC15(SVCPOOL *pool, struct socket *so, size_t sendsize,
    size_t recvsize)
{
	SVCXPRT *xprt;
	struct __rpc_sockinfo si;
	struct sockaddr* sa;
	int error;

	if (!FUNC5(so, &si)) {
		FUNC8(svc_dg_str, svc_dg_err1);
		return (NULL);
	}
	/*
	 * Find the receive and the send size
	 */
	sendsize = FUNC4(si.si_af, si.si_proto, (int)sendsize);
	recvsize = FUNC4(si.si_af, si.si_proto, (int)recvsize);
	if ((sendsize == 0) || (recvsize == 0)) {
		FUNC8(svc_dg_str, svc_dg_err2);
		return (NULL);
	}

	xprt = FUNC11();
	FUNC13(&xprt->xp_lock, "xprt->xp_lock");
	xprt->xp_pool = pool;
	xprt->xp_socket = so;
	xprt->xp_p1 = NULL;
	xprt->xp_p2 = NULL;
	xprt->xp_ops = &svc_dg_ops;

	FUNC1(so->so_vnet);
	error = so->so_proto->pr_usrreqs->pru_sockaddr(so, &sa);
	FUNC0();
	if (error)
		goto freedata;

	FUNC7(&xprt->xp_ltaddr, sa, sa->sa_len);
	FUNC6(sa, M_SONAME);

	FUNC14(xprt);

	FUNC2(&so->so_rcv);
	FUNC9(so, SO_RCV, svc_dg_soupcall, xprt);
	FUNC3(&so->so_rcv);

	return (xprt);
freedata:
	(void) FUNC8(svc_dg_str, __no_mem_str);
	FUNC12(xprt);

	return (NULL);
}