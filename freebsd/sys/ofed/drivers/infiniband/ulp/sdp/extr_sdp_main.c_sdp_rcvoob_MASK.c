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
struct TYPE_2__ {int sb_state; } ;
struct socket {scalar_t__ so_oobmark; int so_options; TYPE_1__ so_rcv; } ;
struct sdp_sock {int flags; int oobflags; int /*<<< orphan*/  rx_ring; int /*<<< orphan*/  iobc; } ;
struct mbuf {int m_len; } ;

/* Variables and functions */
 int ECONNRESET ; 
 int EINVAL ; 
 int EWOULDBLOCK ; 
 int MSG_PEEK ; 
 int SBS_RCVATMARK ; 
 int SDP_DROPPED ; 
 int SDP_HADOOB ; 
 int SDP_HAVEOOB ; 
 int SDP_TIMEWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdp_sock*) ; 
 int SO_OOBINLINE ; 
 int /*<<< orphan*/  caddr_t ; 
 int /*<<< orphan*/ * FUNC2 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct sdp_sock* FUNC5 (struct socket*) ; 

__attribute__((used)) static int
FUNC6(struct socket *so, struct mbuf *m, int flags)
{
	int error = 0;
	struct sdp_sock *ssk;

	ssk = FUNC5(so);
	FUNC0(ssk);
	if (!FUNC3(&ssk->rx_ring)) {
		FUNC1(ssk);
		return (ECONNRESET);
	}
	if (ssk->flags & (SDP_TIMEWAIT | SDP_DROPPED)) {
		error = ECONNRESET;
		goto out;
	}
	if ((so->so_oobmark == 0 &&
	     (so->so_rcv.sb_state & SBS_RCVATMARK) == 0) ||
	    so->so_options & SO_OOBINLINE ||
	    ssk->oobflags & SDP_HADOOB) {
		error = EINVAL;
		goto out;
	}
	if ((ssk->oobflags & SDP_HAVEOOB) == 0) {
		error = EWOULDBLOCK;
		goto out;
	}
	m->m_len = 1;
	*FUNC2(m, caddr_t) = ssk->iobc;
	if ((flags & MSG_PEEK) == 0)
		ssk->oobflags ^= (SDP_HAVEOOB | SDP_HADOOB);
out:
	FUNC4(&ssk->rx_ring);
	FUNC1(ssk);
	return (error);
}