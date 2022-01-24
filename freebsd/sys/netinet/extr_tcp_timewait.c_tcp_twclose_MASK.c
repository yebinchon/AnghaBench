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
struct tcptw {struct inpcb* tw_inpcb; } ;
struct socket {int so_state; } ;
struct inpcb {int inp_flags; struct socket* inp_socket; int /*<<< orphan*/ * inp_ppcb; } ;

/* Variables and functions */
 int INP_SOCKREF ; 
 int INP_TIMEWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC1 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct socket*) ; 
 int SS_PROTOREF ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC7 (struct inpcb*) ; 
 struct tcptw* FUNC8 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC9 (struct socket*) ; 
 int /*<<< orphan*/  FUNC10 (struct tcptw*,int) ; 
 int /*<<< orphan*/  tcps_closed ; 

void
FUNC11(struct tcptw *tw, int reuse)
{
	struct socket *so;
	struct inpcb *inp;

	/*
	 * At this point, we are in one of two situations:
	 *
	 * (1) We have no socket, just an inpcb<->twtcp pair.  We can free
	 *     all state.
	 *
	 * (2) We have a socket -- if we own a reference, release it and
	 *     notify the socket layer.
	 */
	inp = tw->tw_inpcb;
	FUNC2((inp->inp_flags & INP_TIMEWAIT), ("tcp_twclose: !timewait"));
	FUNC2(FUNC8(inp) == tw, ("tcp_twclose: inp_ppcb != tw"));
	FUNC3();
	FUNC0(inp);

	FUNC10(tw, reuse);
	inp->inp_ppcb = NULL;
	FUNC6(inp);

	so = inp->inp_socket;
	if (so != NULL) {
		/*
		 * If there's a socket, handle two cases: first, we own a
		 * strong reference, which we will now release, or we don't
		 * in which case another reference exists (XXXRW: think
		 * about this more), and we don't need to take action.
		 */
		if (inp->inp_flags & INP_SOCKREF) {
			inp->inp_flags &= ~INP_SOCKREF;
			FUNC1(inp);
			FUNC4(so);
			FUNC2(so->so_state & SS_PROTOREF,
			    ("tcp_twclose: INP_SOCKREF && !SS_PROTOREF"));
			so->so_state &= ~SS_PROTOREF;
			FUNC9(so);
		} else {
			/*
			 * If we don't own the only reference, the socket and
			 * inpcb need to be left around to be handled by
			 * tcp_usr_detach() later.
			 */
			FUNC1(inp);
		}
	} else {
		/*
		 * The socket has been already cleaned-up for us, only free the
		 * inpcb.
		 */
		FUNC7(inp);
	}
	FUNC5(tcps_closed);
}