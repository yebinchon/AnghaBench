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
struct tcpcb {int dummy; } ;
struct socket {int /*<<< orphan*/  so_state; } ;
struct inpcb {int inp_flags; int /*<<< orphan*/ * inp_socket; } ;
struct epoch_tracker {int dummy; } ;

/* Variables and functions */
 int INP_DROPPED ; 
 int INP_SOCKREF ; 
 int INP_TIMEWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC1 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC4 (struct epoch_tracker) ; 
 int /*<<< orphan*/  PRU_CLOSE ; 
 int /*<<< orphan*/  FUNC5 (struct socket*) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*) ; 
 int /*<<< orphan*/  SS_PROTOREF ; 
 int /*<<< orphan*/  TCPDEBUG0 ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct tcpcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debug__user ; 
 struct tcpcb* FUNC10 (struct inpcb*) ; 
 struct inpcb* FUNC11 (struct socket*) ; 
 int /*<<< orphan*/  FUNC12 (struct tcpcb*) ; 

__attribute__((used)) static void
FUNC13(struct socket *so)
{
	struct inpcb *inp;
	struct tcpcb *tp = NULL;
	struct epoch_tracker et;
	TCPDEBUG0;

	inp = FUNC11(so);
	FUNC2(inp != NULL, ("tcp_usr_close: inp == NULL"));

	FUNC3(et);
	FUNC0(inp);
	FUNC2(inp->inp_socket != NULL,
	    ("tcp_usr_close: inp_socket == NULL"));

	/*
	 * If we still have full TCP state, and we're not dropped, initiate
	 * a disconnect.
	 */
	if (!(inp->inp_flags & INP_TIMEWAIT) &&
	    !(inp->inp_flags & INP_DROPPED)) {
		tp = FUNC10(inp);
		FUNC7();
		FUNC12(tp);
		FUNC8(PRU_CLOSE);
		FUNC9(debug__user, tp, PRU_CLOSE);
	}
	if (!(inp->inp_flags & INP_DROPPED)) {
		FUNC5(so);
		so->so_state |= SS_PROTOREF;
		FUNC6(so);
		inp->inp_flags |= INP_SOCKREF;
	}
	FUNC1(inp);
	FUNC4(et);
}