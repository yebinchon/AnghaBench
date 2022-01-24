#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct thread {int dummy; } ;
struct TYPE_4__ {scalar_t__ sb_hiwat; int /*<<< orphan*/  sb_flags; } ;
struct TYPE_3__ {scalar_t__ sb_hiwat; int /*<<< orphan*/  sb_flags; } ;
struct socket {int so_options; scalar_t__ so_linger; scalar_t__ so_pcb; int /*<<< orphan*/  so_cred; TYPE_2__ so_snd; TYPE_1__ so_rcv; } ;
struct sdp_sock {int /*<<< orphan*/  rxctlq; int /*<<< orphan*/  state; scalar_t__ qp_active; scalar_t__ flags; int /*<<< orphan*/  cred; struct socket* socket; int /*<<< orphan*/  lock; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sdp_sock*,int /*<<< orphan*/ ) ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  SB_AUTOSIZE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int SO_LINGER ; 
 int /*<<< orphan*/  TCPS_CLOSED ; 
 scalar_t__ TCP_LINGERTIME ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  sdp_count ; 
 int /*<<< orphan*/  FUNC7 (struct socket*) ; 
 int /*<<< orphan*/  sdp_list ; 
 int /*<<< orphan*/  sdp_recvspace ; 
 int /*<<< orphan*/  sdp_sendspace ; 
 struct sdp_sock* FUNC8 (struct socket*) ; 
 int /*<<< orphan*/  sdp_zone ; 
 int FUNC9 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sdp_sock* FUNC10 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC11(struct socket *so, int proto, struct thread *td)
{
	struct sdp_sock *ssk;
	int error;

	ssk = FUNC8(so);
	FUNC0(ssk == NULL, ("sdp_attach: ssk already set on so %p", so));
	if (so->so_snd.sb_hiwat == 0 || so->so_rcv.sb_hiwat == 0) {
		error = FUNC9(so, sdp_sendspace, sdp_recvspace);
		if (error)
			return (error);
	}
	so->so_rcv.sb_flags |= SB_AUTOSIZE;
	so->so_snd.sb_flags |= SB_AUTOSIZE;
	ssk = FUNC10(sdp_zone, M_NOWAIT | M_ZERO);
	if (ssk == NULL)
		return (ENOBUFS);
	FUNC6(&ssk->lock, "sdpsock");
	ssk->socket = so;
	ssk->cred = FUNC4(so->so_cred);
	so->so_pcb = (caddr_t)ssk;
	FUNC7(so);
	ssk->flags = 0;
	ssk->qp_active = 0;
	ssk->state = TCPS_CLOSED;
	FUNC5(&ssk->rxctlq, INT_MAX);
	FUNC2();
	FUNC1(&sdp_list, ssk, list);
	sdp_count++;
	FUNC3();
	if ((so->so_options & SO_LINGER) && so->so_linger == 0)
		so->so_linger = TCP_LINGERTIME;

	return (0);
}