#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int dummy; } ;
struct rpc_msg {int dummy; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;
struct ct_data {int /*<<< orphan*/  ct_lock; } ;
struct cf_conn {struct mbuf* mreq; } ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;
struct TYPE_4__ {int /*<<< orphan*/  xp_lock; scalar_t__ xp_p2; scalar_t__ xp_p1; } ;
typedef  TYPE_1__ SVCXPRT ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  XDR_DECODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct rpc_msg*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct mbuf*,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static bool_t
FUNC9(SVCXPRT *xprt, struct rpc_msg *msg,
    struct sockaddr **addrp, struct mbuf **mp)
{
	struct cf_conn *cd = (struct cf_conn *) xprt->xp_p1;
	struct ct_data *ct;
	struct mbuf *m;
	XDR xdrs;

	FUNC3(&xprt->xp_lock);
	ct = (struct ct_data *)xprt->xp_p2;
	if (ct == NULL) {
		FUNC4(&xprt->xp_lock);
		return (FALSE);
	}
	FUNC1(&ct->ct_lock);
	m = cd->mreq;
	if (m == NULL) {
		FUNC8(xprt);
		FUNC2(&ct->ct_lock);
		FUNC4(&xprt->xp_lock);
		return (FALSE);
	}
	cd->mreq = m->m_nextpkt;
	FUNC2(&ct->ct_lock);
	FUNC4(&xprt->xp_lock);

	FUNC6(&xdrs, m, XDR_DECODE);
	if (! FUNC5(&xdrs, msg)) {
		FUNC0(&xdrs);
		return (FALSE);
	}
	*addrp = NULL;
	*mp = FUNC7(&xdrs);
	FUNC0(&xdrs);
	return (TRUE);
}