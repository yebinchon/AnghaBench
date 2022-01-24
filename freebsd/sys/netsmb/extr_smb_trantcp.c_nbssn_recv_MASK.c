#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int8_t ;
struct uio {scalar_t__ uio_resid; struct thread* uio_td; } ;
struct thread {int dummy; } ;
struct TYPE_2__ {int sb_state; } ;
struct socket {int so_state; int /*<<< orphan*/  so_vnet; TYPE_1__ so_rcv; } ;
struct sockaddr {int dummy; } ;
struct nbpcb {scalar_t__ nbp_state; struct socket* nbp_tso; } ;
struct mbuf {struct mbuf* m_next; } ;
typedef  int /*<<< orphan*/  auio ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ECONNRESET ; 
 int EINTR ; 
 int ENOTCONN ; 
 int EPIPE ; 
 int ERESTART ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 int MSG_WAITALL ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ NBST_CLOSED ; 
 scalar_t__ NBST_SESSION ; 
 int /*<<< orphan*/  NB_SORECEIVE_CHUNK ; 
 scalar_t__ NB_SSN_KEEPALIVE ; 
 scalar_t__ NB_SSN_MESSAGE ; 
 int SBS_CANTRCVMORE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int SS_ISDISCONNECTED ; 
 int SS_ISDISCONNECTING ; 
 int /*<<< orphan*/  FUNC4 (struct uio*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct nbpcb*,int*,scalar_t__*,int /*<<< orphan*/ ,struct thread*) ; 
 int FUNC8 (struct socket*,struct sockaddr**,struct uio*,struct mbuf**,struct mbuf**,int*) ; 

__attribute__((used)) static int
FUNC9(struct nbpcb *nbp, struct mbuf **mpp, int *lenp,
	u_int8_t *rpcodep, struct thread *td)
{
	struct socket *so = nbp->nbp_tso;
	struct uio auio;
	struct mbuf *m, *tm, *im;
	u_int8_t rpcode;
	int len, resid;
	int error, rcvflg;

	if (so == NULL)
		return ENOTCONN;

	if (mpp)
		*mpp = NULL;
	m = NULL;
	for(;;) {
		/*
		 * Poll for a response header.
		 * If we don't have one waiting, return.
		 */
		len = 0;
		rpcode = 0;
		error = FUNC7(nbp, &len, &rpcode, MSG_DONTWAIT, td);
		if ((so->so_state & (SS_ISDISCONNECTING | SS_ISDISCONNECTED)) ||
		    (so->so_rcv.sb_state & SBS_CANTRCVMORE)) {
			nbp->nbp_state = NBST_CLOSED;
			FUNC2("session closed by peer\n");
			return ECONNRESET;
		}
		if (error)
			return error;
		if (len == 0 && nbp->nbp_state != NBST_SESSION)
			break;
		/* no data, try again */
		if (rpcode == NB_SSN_KEEPALIVE)
			continue;

		/*
		 * Loop, blocking, for data following the response header.
		 *
		 * Note that we can't simply block here with MSG_WAITALL for the
		 * entire response size, as it may be larger than the TCP
		 * slow-start window that the sender employs.  This will result
		 * in the sender stalling until the delayed ACK is sent, then
		 * resuming slow-start, resulting in very poor performance.
		 *
		 * Instead, we never request more than NB_SORECEIVE_CHUNK
		 * bytes at a time, resulting in an ack being pushed by
		 * the TCP code at the completion of each call.
		 */
		resid = len;
		while (resid > 0) {
			tm = NULL;
			rcvflg = MSG_WAITALL;
			FUNC4(&auio, sizeof(auio));
			auio.uio_resid = FUNC6(resid, NB_SORECEIVE_CHUNK);
			auio.uio_td = td;
			resid -= auio.uio_resid;
			/*
			 * Spin until we have collected everything in
			 * this chunk.
			 */
			do {
				rcvflg = MSG_WAITALL;
				FUNC1(so->so_vnet);
				error = FUNC8(so, (struct sockaddr **)NULL,
				    &auio, &tm, (struct mbuf **)NULL, &rcvflg);
				FUNC0();
			} while (error == EWOULDBLOCK || error == EINTR ||
				 error == ERESTART);
			if (error)
				goto out;
			/* short return guarantees unhappiness */
			if (auio.uio_resid > 0) {
				FUNC3("packet is shorter than expected\n");
				error = EPIPE;
				goto out;
			}
			/* append received chunk to previous chunk(s) */
			if (m == NULL) {
				m = tm;
			} else {
				/*
				 * Just glue the new chain on the end.
				 * Consumer will pullup as required.
				 */
				for (im = m; im->m_next != NULL; im = im->m_next)
					;
				im->m_next = tm;
			}
		}
		/* got a session/message packet? */
		if (nbp->nbp_state == NBST_SESSION &&
		    rpcode == NB_SSN_MESSAGE)
			break;
		/* drop packet and try for another */
		FUNC2("non-session packet %x\n", rpcode);
		if (m) {
			FUNC5(m);
			m = NULL;
		}
	}

out:
	if (error) {
		if (m)
			FUNC5(m);
		return error;
	}
	if (mpp)
		*mpp = m;
	else
		FUNC5(m);
	*lenp = len;
	*rpcodep = rpcode;
	return 0;
}