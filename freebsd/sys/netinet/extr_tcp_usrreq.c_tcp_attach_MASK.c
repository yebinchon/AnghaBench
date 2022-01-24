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
struct tcpcb {int /*<<< orphan*/  t_state; } ;
struct TYPE_4__ {scalar_t__ sb_hiwat; int /*<<< orphan*/  sb_flags; } ;
struct TYPE_3__ {scalar_t__ sb_hiwat; int /*<<< orphan*/  sb_flags; } ;
struct socket {TYPE_2__ so_snd; TYPE_1__ so_rcv; } ;
struct inpcb {int inp_vflag; int inp_flags; int in6p_hops; } ;
struct epoch_tracker {int dummy; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int IN6P_IPV6_V6ONLY ; 
 int INP_IPV4 ; 
 int INP_IPV6 ; 
 int INP_IPV6PROTO ; 
 int /*<<< orphan*/  FUNC0 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC1 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC2 (struct epoch_tracker) ; 
 int /*<<< orphan*/  SB_AUTOSIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCPS_CLOSED ; 
 int /*<<< orphan*/  V_tcbinfo ; 
 int /*<<< orphan*/  V_tcp_recvspace ; 
 int /*<<< orphan*/  V_tcp_sendspace ; 
 int FUNC4 (struct socket*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC6 (struct inpcb*) ; 
 int FUNC7 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inpcb* FUNC8 (struct socket*) ; 
 struct tcpcb* FUNC9 (struct inpcb*) ; 

__attribute__((used)) static int
FUNC10(struct socket *so)
{
	struct tcpcb *tp;
	struct inpcb *inp;
	struct epoch_tracker et;
	int error;

	if (so->so_snd.sb_hiwat == 0 || so->so_rcv.sb_hiwat == 0) {
		error = FUNC7(so, V_tcp_sendspace, V_tcp_recvspace);
		if (error)
			return (error);
	}
	so->so_rcv.sb_flags |= SB_AUTOSIZE;
	so->so_snd.sb_flags |= SB_AUTOSIZE;
	FUNC1(et);
	error = FUNC4(so, &V_tcbinfo);
	if (error) {
		FUNC2(et);
		return (error);
	}
	inp = FUNC8(so);
#ifdef INET6
	if (inp->inp_vflag & INP_IPV6PROTO) {
		inp->inp_vflag |= INP_IPV6;
		if ((inp->inp_flags & IN6P_IPV6_V6ONLY) == 0)
			inp->inp_vflag |= INP_IPV4;
		inp->in6p_hops = -1;	/* use kernel default */
	}
	else
#endif
	inp->inp_vflag |= INP_IPV4;
	tp = FUNC9(inp);
	if (tp == NULL) {
		FUNC5(inp);
		FUNC6(inp);
		FUNC2(et);
		return (ENOBUFS);
	}
	tp->t_state = TCPS_CLOSED;
	FUNC0(inp);
	FUNC2(et);
	FUNC3(TCPS_CLOSED);
	return (0);
}