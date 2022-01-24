#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tcpcb {scalar_t__ t_state; int /*<<< orphan*/ * t_tfo_pending; struct inpcb* t_inpcb; } ;
struct socket {int so_state; } ;
struct inpcb {int inp_flags; struct socket* inp_socket; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int INP_SOCKREF ; 
 int /*<<< orphan*/  FUNC1 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC2 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*) ; 
 int SS_PROTOREF ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ TCPS_CLOSED ; 
 scalar_t__ TCPS_LISTEN ; 
 int /*<<< orphan*/  V_tcbinfo ; 
 int /*<<< orphan*/  FUNC6 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC7 (struct socket*) ; 
 int /*<<< orphan*/  FUNC8 (struct socket*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC11 (struct tcpcb*,scalar_t__) ; 
 int /*<<< orphan*/  tcps_closed ; 

struct tcpcb *
FUNC12(struct tcpcb *tp)
{
	struct inpcb *inp = tp->t_inpcb;
	struct socket *so;

	FUNC0(&V_tcbinfo);
	FUNC1(inp);

#ifdef TCP_OFFLOAD
	if (tp->t_state == TCPS_LISTEN)
		tcp_offload_listen_stop(tp);
#endif
	/*
	 * This releases the TFO pending counter resource for TFO listen
	 * sockets as well as passively-created TFO sockets that transition
	 * from SYN_RECEIVED to CLOSED.
	 */
	if (tp->t_tfo_pending) {
		FUNC9(tp->t_tfo_pending);
		tp->t_tfo_pending = NULL;
	}
	FUNC6(inp);
	FUNC5(tcps_closed);
	if (tp->t_state != TCPS_CLOSED)
		FUNC11(tp, TCPS_CLOSED);
	FUNC3(inp->inp_socket != NULL, ("tcp_close: inp_socket NULL"));
	so = inp->inp_socket;
	FUNC8(so);
	if (inp->inp_flags & INP_SOCKREF) {
		FUNC3(so->so_state & SS_PROTOREF,
		    ("tcp_close: !SS_PROTOREF"));
		inp->inp_flags &= ~INP_SOCKREF;
		FUNC2(inp);
		FUNC4(so);
		so->so_state &= ~SS_PROTOREF;
		FUNC7(so);
		return (NULL);
	}
	return (tp);
}