#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct uio {int uio_resid; int /*<<< orphan*/  uio_td; } ;
struct sockaddr {int dummy; } ;
struct rpc_msg {int dummy; } ;
struct mbuf {int dummy; } ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;
struct TYPE_8__ {int /*<<< orphan*/  so_rcv; } ;
struct TYPE_7__ {int /*<<< orphan*/  xp_lock; TYPE_4__* xp_socket; } ;
typedef  TYPE_1__ SVCXPRT ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FALSE ; 
 int MSG_DONTWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SO_RCV ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  XDR_DECODE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int FUNC4 (TYPE_4__*,struct sockaddr**,struct uio*,struct mbuf**,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct rpc_msg*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct mbuf*,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static bool_t
FUNC12(SVCXPRT *xprt, struct rpc_msg *msg,
    struct sockaddr **addrp, struct mbuf **mp)
{
	struct uio uio;
	struct sockaddr *raddr;
	struct mbuf *mreq;
	XDR xdrs;
	int error, rcvflag;

	/*
	 * Serialise access to the socket.
	 */
	FUNC6(&xprt->xp_lock);

	/*
	 * The socket upcall calls xprt_active() which will eventually
	 * cause the server to call us here. We attempt to read a
	 * packet from the socket and process it. If the read fails,
	 * we have drained all pending requests so we call
	 * xprt_inactive().
	 */
	uio.uio_resid = 1000000000;
	uio.uio_td = curthread;
	mreq = NULL;
	rcvflag = MSG_DONTWAIT;
	error = FUNC4(xprt->xp_socket, &raddr, &uio, &mreq, NULL, &rcvflag);

	if (error == EWOULDBLOCK) {
		/*
		 * We must re-test for readability after taking the
		 * lock to protect us in the case where a new packet
		 * arrives on the socket after our call to soreceive
		 * fails with EWOULDBLOCK. The pool lock protects us
		 * from racing the upcall after our soreadable() call
		 * returns false.
		 */
		FUNC0(&xprt->xp_socket->so_rcv);
		if (!FUNC3(xprt->xp_socket))
			FUNC11(xprt);
		FUNC1(&xprt->xp_socket->so_rcv);
		FUNC7(&xprt->xp_lock);
		return (FALSE);
	}

	if (error) {
		FUNC0(&xprt->xp_socket->so_rcv);
		FUNC5(xprt->xp_socket, SO_RCV);
		FUNC1(&xprt->xp_socket->so_rcv);
		FUNC11(xprt);
		FUNC7(&xprt->xp_lock);
		return (FALSE);
	}

	FUNC7(&xprt->xp_lock);

	FUNC9(&xdrs, mreq, XDR_DECODE);
	if (! FUNC8(&xdrs, msg)) {
		FUNC2(&xdrs);
		return (FALSE);
	}

	*addrp = raddr;
	*mp = FUNC10(&xdrs);
	FUNC2(&xdrs);

	return (TRUE);
}