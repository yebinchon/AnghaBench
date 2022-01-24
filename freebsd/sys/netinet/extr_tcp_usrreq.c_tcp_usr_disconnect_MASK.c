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
struct socket {int dummy; } ;
struct inpcb {int inp_flags; } ;
struct epoch_tracker {int dummy; } ;

/* Variables and functions */
 int ECONNRESET ; 
 int INP_DROPPED ; 
 int INP_TIMEWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC1 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC4 (struct epoch_tracker) ; 
 int /*<<< orphan*/  PRU_DISCONNECT ; 
 int /*<<< orphan*/  TCPDEBUG0 ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct tcpcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debug__user ; 
 struct tcpcb* FUNC8 (struct inpcb*) ; 
 struct inpcb* FUNC9 (struct socket*) ; 
 int /*<<< orphan*/  FUNC10 (struct tcpcb*) ; 

__attribute__((used)) static int
FUNC11(struct socket *so)
{
	struct inpcb *inp;
	struct tcpcb *tp = NULL;
	struct epoch_tracker et;
	int error = 0;

	TCPDEBUG0;
	FUNC3(et);
	inp = FUNC9(so);
	FUNC2(inp != NULL, ("tcp_usr_disconnect: inp == NULL"));
	FUNC0(inp);
	if (inp->inp_flags & INP_TIMEWAIT)
		goto out;
	if (inp->inp_flags & INP_DROPPED) {
		error = ECONNRESET;
		goto out;
	}
	tp = FUNC8(inp);
	FUNC5();
	FUNC10(tp);
out:
	FUNC6(PRU_DISCONNECT);
	FUNC7(debug__user, tp, PRU_DISCONNECT);
	FUNC1(inp);
	FUNC4(et);
	return (error);
}