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
struct tcpcb {int t_flags; scalar_t__ t_state; TYPE_1__* t_fb; } ;
struct socket {int dummy; } ;
struct inpcb {int inp_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* tfb_tcp_output ) (struct tcpcb*) ;} ;

/* Variables and functions */
 int ECONNRESET ; 
 int INP_DROPPED ; 
 int INP_TIMEWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC1 (struct inpcb*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PRU_RCVD ; 
 int /*<<< orphan*/  TCPDEBUG0 ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ TCPS_SYN_RECEIVED ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct tcpcb*,int /*<<< orphan*/ ) ; 
 int TF_TOE ; 
 int /*<<< orphan*/  debug__user ; 
 struct tcpcb* FUNC7 (struct inpcb*) ; 
 struct inpcb* FUNC8 (struct socket*) ; 
 int /*<<< orphan*/  FUNC9 (struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC10 (struct tcpcb*) ; 

__attribute__((used)) static int
FUNC11(struct socket *so, int flags)
{
	struct inpcb *inp;
	struct tcpcb *tp = NULL;
	int error = 0;

	TCPDEBUG0;
	inp = FUNC8(so);
	FUNC3(inp != NULL, ("tcp_usr_rcvd: inp == NULL"));
	FUNC0(inp);
	if (inp->inp_flags & (INP_TIMEWAIT | INP_DROPPED)) {
		error = ECONNRESET;
		goto out;
	}
	tp = FUNC7(inp);
	FUNC4();
	/*
	 * For passively-created TFO connections, don't attempt a window
	 * update while still in SYN_RECEIVED as this may trigger an early
	 * SYN|ACK.  It is preferable to have the SYN|ACK be sent along with
	 * application response data, or failing that, when the DELACK timer
	 * expires.
	 */
	if (FUNC2(tp->t_flags) &&
	    (tp->t_state == TCPS_SYN_RECEIVED))
		goto out;
#ifdef TCP_OFFLOAD
	if (tp->t_flags & TF_TOE)
		tcp_offload_rcvd(tp);
	else
#endif
	tp->t_fb->tfb_tcp_output(tp);

out:
	FUNC5(PRU_RCVD);
	FUNC6(debug__user, tp, PRU_RCVD);
	FUNC1(inp);
	return (error);
}