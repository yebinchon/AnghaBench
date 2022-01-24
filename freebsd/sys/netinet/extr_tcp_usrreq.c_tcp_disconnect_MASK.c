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
struct tcpcb {scalar_t__ t_state; TYPE_1__* t_fb; int /*<<< orphan*/  t_flags; struct inpcb* t_inpcb; } ;
struct socket {int so_options; scalar_t__ so_linger; int /*<<< orphan*/  so_rcv; } ;
struct inpcb {int inp_flags; struct socket* inp_socket; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* tfb_tcp_output ) (struct tcpcb*) ;} ;

/* Variables and functions */
 int INP_DROPPED ; 
 int /*<<< orphan*/  FUNC0 (struct inpcb*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int SO_LINGER ; 
 scalar_t__ TCPS_ESTABLISHED ; 
 scalar_t__ TCPS_LISTEN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*) ; 
 int /*<<< orphan*/  FUNC6 (struct tcpcb*) ; 
 struct tcpcb* FUNC7 (struct tcpcb*) ; 
 struct tcpcb* FUNC8 (struct tcpcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct tcpcb*) ; 

__attribute__((used)) static void
FUNC10(struct tcpcb *tp)
{
	struct inpcb *inp = tp->t_inpcb;
	struct socket *so = inp->inp_socket;

	FUNC3();
	FUNC0(inp);

	/*
	 * Neither tcp_close() nor tcp_drop() should return NULL, as the
	 * socket is still open.
	 */
	if (tp->t_state < TCPS_ESTABLISHED &&
	    !(tp->t_state > TCPS_LISTEN && FUNC1(tp->t_flags))) {
		tp = FUNC7(tp);
		FUNC2(tp != NULL,
		    ("tcp_disconnect: tcp_close() returned NULL"));
	} else if ((so->so_options & SO_LINGER) && so->so_linger == 0) {
		tp = FUNC8(tp, 0);
		FUNC2(tp != NULL,
		    ("tcp_disconnect: tcp_drop() returned NULL"));
	} else {
		FUNC5(so);
		FUNC4(&so->so_rcv);
		FUNC9(tp);
		if (!(inp->inp_flags & INP_DROPPED))
			tp->t_fb->tfb_tcp_output(tp);
	}
}