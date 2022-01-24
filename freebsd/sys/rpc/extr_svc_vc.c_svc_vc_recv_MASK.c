#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xid_plus_direction ;
typedef  int /*<<< orphan*/  uint32_t ;
struct uio {int uio_resid; int /*<<< orphan*/  uio_td; } ;
struct socket {int /*<<< orphan*/  so_rcv; } ;
struct sockaddr {int dummy; } ;
struct rpc_msg {int dummy; } ;
struct mbuf {int dummy; } ;
struct cf_conn {scalar_t__ resid; struct mbuf* mpending; void* strm_stat; TYPE_3__* mreq; scalar_t__ eor; } ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;
struct TYPE_12__ {struct mbuf* m_next; } ;
struct TYPE_11__ {int m_len; } ;
struct TYPE_10__ {int /*<<< orphan*/  xp_lock; scalar_t__ xp_upcallset; int /*<<< orphan*/ * xp_p2; struct socket* xp_socket; scalar_t__ xp_p1; } ;
typedef  TYPE_1__ SVCXPRT ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FALSE ; 
 int MSG_DONTWAIT ; 
 int /*<<< orphan*/  REPLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SO_RCV ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  XDR_DECODE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* XPRT_DIED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int,char*) ; 
 TYPE_7__* FUNC5 (struct mbuf*) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct socket*) ; 
 int FUNC9 (struct socket*,int /*<<< orphan*/ *,struct uio*,struct mbuf**,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,struct rpc_msg*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 

__attribute__((used)) static bool_t
FUNC18(SVCXPRT *xprt, struct rpc_msg *msg,
    struct sockaddr **addrp, struct mbuf **mp)
{
	struct cf_conn *cd = (struct cf_conn *) xprt->xp_p1;
	struct uio uio;
	struct mbuf *m;
	struct socket* so = xprt->xp_socket;
	XDR xdrs;
	int error, rcvflag;
	uint32_t xid_plus_direction[2];

	/*
	 * Serialise access to the socket and our own record parsing
	 * state.
	 */
	FUNC12(&xprt->xp_lock);

	for (;;) {
		/* If we have no request ready, check pending queue. */
		while (cd->mpending &&
		    (cd->mreq == NULL || cd->resid != 0 || !cd->eor)) {
			if (!FUNC11(xprt))
				break;
		}

		/* Process and return complete request in cd->mreq. */
		if (cd->mreq != NULL && cd->resid == 0 && cd->eor) {

			/*
			 * Now, check for a backchannel reply.
			 * The XID is in the first uint32_t of the reply
			 * and the message direction is the second one.
			 */
			if ((cd->mreq->m_len >= sizeof(xid_plus_direction) ||
			    FUNC6(cd->mreq, NULL) >=
			    sizeof(xid_plus_direction)) &&
			    xprt->xp_p2 != NULL) {
				FUNC4(cd->mreq, 0,
				    sizeof(xid_plus_direction),
				    (char *)xid_plus_direction);
				xid_plus_direction[0] =
				    FUNC7(xid_plus_direction[0]);
				xid_plus_direction[1] =
				    FUNC7(xid_plus_direction[1]);
				/* Check message direction. */
				if (xid_plus_direction[1] == REPLY) {
					FUNC3(xprt->xp_p2,
					    cd->mreq,
					    xid_plus_direction[0]);
					cd->mreq = NULL;
					continue;
				}
			}

			FUNC15(&xdrs, cd->mreq, XDR_DECODE);
			cd->mreq = NULL;

			/* Check for next request in a pending queue. */
			FUNC11(xprt);
			if (cd->mreq == NULL || cd->resid != 0) {
				FUNC0(&so->so_rcv);
				if (!FUNC8(so))
					FUNC17(xprt);
				FUNC1(&so->so_rcv);
			}

			FUNC13(&xprt->xp_lock);

			if (! FUNC14(&xdrs, msg)) {
				FUNC2(&xdrs);
				return (FALSE);
			}

			*addrp = NULL;
			*mp = FUNC16(&xdrs);
			FUNC2(&xdrs);

			return (TRUE);
		}

		/*
		 * The socket upcall calls xprt_active() which will eventually
		 * cause the server to call us here. We attempt to
		 * read as much as possible from the socket and put
		 * the result in cd->mpending. If the read fails,
		 * we have drained both cd->mpending and the socket so
		 * we can call xprt_inactive().
		 */
		uio.uio_resid = 1000000000;
		uio.uio_td = curthread;
		m = NULL;
		rcvflag = MSG_DONTWAIT;
		error = FUNC9(so, NULL, &uio, &m, NULL, &rcvflag);

		if (error == EWOULDBLOCK) {
			/*
			 * We must re-test for readability after
			 * taking the lock to protect us in the case
			 * where a new packet arrives on the socket
			 * after our call to soreceive fails with
			 * EWOULDBLOCK.
			 */
			FUNC0(&so->so_rcv);
			if (!FUNC8(so))
				FUNC17(xprt);
			FUNC1(&so->so_rcv);
			FUNC13(&xprt->xp_lock);
			return (FALSE);
		}

		if (error) {
			FUNC0(&so->so_rcv);
			if (xprt->xp_upcallset) {
				xprt->xp_upcallset = 0;
				FUNC10(so, SO_RCV);
			}
			FUNC1(&so->so_rcv);
			FUNC17(xprt);
			cd->strm_stat = XPRT_DIED;
			FUNC13(&xprt->xp_lock);
			return (FALSE);
		}

		if (!m) {
			/*
			 * EOF - the other end has closed the socket.
			 */
			FUNC17(xprt);
			cd->strm_stat = XPRT_DIED;
			FUNC13(&xprt->xp_lock);
			return (FALSE);
		}

		if (cd->mpending)
			FUNC5(cd->mpending)->m_next = m;
		else
			cd->mpending = m;
	}
}