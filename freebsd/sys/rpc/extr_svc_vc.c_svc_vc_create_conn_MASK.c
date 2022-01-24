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
struct sockopt {int* sopt_val; int sopt_valsize; int /*<<< orphan*/  sopt_name; scalar_t__ sopt_level; void* sopt_dir; } ;
struct socket {int /*<<< orphan*/  so_rcv; TYPE_2__* so_proto; int /*<<< orphan*/  so_vnet; } ;
struct sockaddr {int /*<<< orphan*/  sa_len; } ;
struct cf_conn {int /*<<< orphan*/  strm_stat; } ;
typedef  int /*<<< orphan*/  one ;
struct TYPE_12__ {int xp_idletimeout; int xp_upcallset; int /*<<< orphan*/  xp_lock; int /*<<< orphan*/  xp_ltaddr; int /*<<< orphan*/  xp_rtaddr; int /*<<< orphan*/ * xp_ops; int /*<<< orphan*/ * xp_p2; struct cf_conn* xp_p1; struct socket* xp_socket; int /*<<< orphan*/ * xp_pool; } ;
struct TYPE_11__ {scalar_t__ pr_protocol; TYPE_1__* pr_usrreqs; } ;
struct TYPE_10__ {int (* pru_sockaddr ) (struct socket*,struct sockaddr**) ;} ;
typedef  TYPE_3__ SVCXPRT ;
typedef  int /*<<< orphan*/  SVCPOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ IPPROTO_TCP ; 
 int /*<<< orphan*/  M_SONAME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ SOL_SOCKET ; 
 void* SOPT_SET ; 
 int /*<<< orphan*/  SO_KEEPALIVE ; 
 int /*<<< orphan*/  SO_RCV ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 int /*<<< orphan*/  XPRT_IDLE ; 
 int /*<<< orphan*/  FUNC4 (struct sockopt*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr*,int /*<<< orphan*/ ) ; 
 struct cf_conn* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct cf_conn*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct socket*,struct sockopt*) ; 
 int /*<<< orphan*/  FUNC10 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC11 (struct socket*,struct sockaddr**) ; 
 int /*<<< orphan*/  svc_vc_ops ; 
 int /*<<< orphan*/  svc_vc_soupcall ; 
 TYPE_3__* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*) ; 

SVCXPRT *
FUNC20(SVCPOOL *pool, struct socket *so, struct sockaddr *raddr)
{
	SVCXPRT *xprt;
	struct cf_conn *cd;
	struct sockaddr* sa = NULL;
	struct sockopt opt;
	int one = 1;
	int error;

	FUNC4(&opt, sizeof(struct sockopt));
	opt.sopt_dir = SOPT_SET;
	opt.sopt_level = SOL_SOCKET;
	opt.sopt_name = SO_KEEPALIVE;
	opt.sopt_val = &one;
	opt.sopt_valsize = sizeof(one);
	error = FUNC9(so, &opt);
	if (error) {
		return (NULL);
	}

	if (so->so_proto->pr_protocol == IPPROTO_TCP) {
		FUNC4(&opt, sizeof(struct sockopt));
		opt.sopt_dir = SOPT_SET;
		opt.sopt_level = IPPROTO_TCP;
		opt.sopt_name = TCP_NODELAY;
		opt.sopt_val = &one;
		opt.sopt_valsize = sizeof(one);
		error = FUNC9(so, &opt);
		if (error) {
			return (NULL);
		}
	}

	cd = FUNC6(sizeof(*cd));
	cd->strm_stat = XPRT_IDLE;

	xprt = FUNC12();
	FUNC15(&xprt->xp_lock, "xprt->xp_lock");
	xprt->xp_pool = pool;
	xprt->xp_socket = so;
	xprt->xp_p1 = cd;
	xprt->xp_p2 = NULL;
	xprt->xp_ops = &svc_vc_ops;

	/*
	 * See http://www.connectathon.org/talks96/nfstcp.pdf - client
	 * has a 5 minute timer, server has a 6 minute timer.
	 */
	xprt->xp_idletimeout = 6 * 60;

	FUNC8(&xprt->xp_rtaddr, raddr, raddr->sa_len);

	FUNC1(so->so_vnet);
	error = so->so_proto->pr_usrreqs->pru_sockaddr(so, &sa);
	FUNC0();
	if (error)
		goto cleanup_svc_vc_create;

	FUNC8(&xprt->xp_ltaddr, sa, sa->sa_len);
	FUNC5(sa, M_SONAME);

	FUNC19(xprt);

	FUNC2(&so->so_rcv);
	xprt->xp_upcallset = 1;
	FUNC10(so, SO_RCV, svc_vc_soupcall, xprt);
	FUNC3(&so->so_rcv);

	/*
	 * Throw the transport into the active list in case it already
	 * has some data buffered.
	 */
	FUNC16(&xprt->xp_lock);
	FUNC18(xprt);
	FUNC17(&xprt->xp_lock);

	return (xprt);
cleanup_svc_vc_create:
	FUNC14(&xprt->xp_lock);
	FUNC13(xprt);
	FUNC7(cd, sizeof(*cd));

	return (NULL);
}