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
struct tcpcb {TYPE_1__* t_fb; } ;
struct socket {int dummy; } ;
struct inpcb {int inp_flags; } ;
struct epoch_tracker {int dummy; } ;
struct TYPE_2__ {int (* tfb_tcp_output ) (struct tcpcb*) ;} ;

/* Variables and functions */
 int ECONNRESET ; 
 int INP_DROPPED ; 
 int INP_TIMEWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC1 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC4 (struct epoch_tracker) ; 
 int /*<<< orphan*/  PRU_SHUTDOWN ; 
 int /*<<< orphan*/  TCPDEBUG0 ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct tcpcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debug__user ; 
 struct tcpcb* FUNC8 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC9 (struct socket*) ; 
 struct inpcb* FUNC10 (struct socket*) ; 
 int FUNC11 (struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC12 (struct tcpcb*) ; 

__attribute__((used)) static int
FUNC13(struct socket *so)
{
	int error = 0;
	struct inpcb *inp;
	struct tcpcb *tp = NULL;
	struct epoch_tracker et;

	TCPDEBUG0;
	FUNC3(et);
	inp = FUNC10(so);
	FUNC2(inp != NULL, ("inp == NULL"));
	FUNC0(inp);
	if (inp->inp_flags & (INP_TIMEWAIT | INP_DROPPED)) {
		error = ECONNRESET;
		goto out;
	}
	tp = FUNC8(inp);
	FUNC5();
	FUNC9(so);
	FUNC12(tp);
	if (!(inp->inp_flags & INP_DROPPED))
		error = tp->t_fb->tfb_tcp_output(tp);

out:
	FUNC6(PRU_SHUTDOWN);
	FUNC7(debug__user, tp, PRU_SHUTDOWN);
	FUNC1(inp);
	FUNC4(et);

	return (error);
}