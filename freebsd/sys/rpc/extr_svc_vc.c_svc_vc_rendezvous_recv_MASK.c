#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;
struct rpc_msg {int dummy; } ;
struct mbuf {int dummy; } ;
typedef  int /*<<< orphan*/  bool_t ;
struct TYPE_11__ {int /*<<< orphan*/  sol_comp; } ;
struct TYPE_10__ {int /*<<< orphan*/  xp_pool; int /*<<< orphan*/  xp_lock; TYPE_5__* xp_socket; scalar_t__ xp_upcallset; } ;
typedef  TYPE_1__ SVCXPRT ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  M_SONAME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  SO_RCV ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct socket*,struct sockaddr**) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_5__*,struct socket**) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,struct socket*,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

__attribute__((used)) static bool_t
FUNC13(SVCXPRT *xprt, struct rpc_msg *msg,
    struct sockaddr **addrp, struct mbuf **mp)
{
	struct socket *so = NULL;
	struct sockaddr *sa = NULL;
	int error;
	SVCXPRT *new_xprt;

	/*
	 * The socket upcall calls xprt_active() which will eventually
	 * cause the server to call us here. We attempt to accept a
	 * connection from the socket and turn it into a new
	 * transport. If the accept fails, we have drained all pending
	 * connections so we call xprt_inactive().
	 */
	FUNC10(&xprt->xp_lock);

	error = FUNC8(xprt->xp_socket, &so);

	if (error == EWOULDBLOCK) {
		/*
		 * We must re-test for new connections after taking
		 * the lock to protect us in the case where a new
		 * connection arrives after our call to accept fails
		 * with EWOULDBLOCK.
		 */
		FUNC0(xprt->xp_socket);
		if (FUNC3(&xprt->xp_socket->sol_comp))
			FUNC12(xprt);
		FUNC1(xprt->xp_socket);
		FUNC11(&xprt->xp_lock);
		return (FALSE);
	}

	if (error) {
		FUNC0(xprt->xp_socket);
		if (xprt->xp_upcallset) {
			xprt->xp_upcallset = 0;
			FUNC7(xprt->xp_socket, SO_RCV);
		}
		FUNC1(xprt->xp_socket);
		FUNC12(xprt);
		FUNC11(&xprt->xp_lock);
		return (FALSE);
	}

	FUNC11(&xprt->xp_lock);

	sa = NULL;
	error = FUNC5(so, &sa);

	if (error) {
		/*
		 * XXX not sure if I need to call sofree or soclose here.
		 */
		if (sa)
			FUNC4(sa, M_SONAME);
		return (FALSE);
	}

	/*
	 * svc_vc_create_conn will call xprt_register - we don't need
	 * to do anything with the new connection except derefence it.
	 */
	new_xprt = FUNC9(xprt->xp_pool, so, sa);
	if (!new_xprt) {
		FUNC6(so);
	} else {
		FUNC2(new_xprt);
	}

	FUNC4(sa, M_SONAME);

	return (FALSE); /* there is never an rpc msg to be processed */
}