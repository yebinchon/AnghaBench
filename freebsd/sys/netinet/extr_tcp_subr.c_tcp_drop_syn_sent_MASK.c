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
struct tcpcb {scalar_t__ t_state; int /*<<< orphan*/  t_flags; } ;
struct inpcb {int inp_flags; } ;

/* Variables and functions */
 int INP_DROPPED ; 
 int INP_TIMEWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct inpcb*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ TCPS_SYN_SENT ; 
 struct tcpcb* FUNC3 (struct inpcb*) ; 
 struct tcpcb* FUNC4 (struct tcpcb*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tcpcb*) ; 

struct inpcb *
FUNC6(struct inpcb *inp, int errno)
{
	struct tcpcb *tp;

	FUNC2();
	FUNC0(inp);

	if ((inp->inp_flags & INP_TIMEWAIT) ||
	    (inp->inp_flags & INP_DROPPED))
		return (inp);

	tp = FUNC3(inp);
	if (tp->t_state != TCPS_SYN_SENT)
		return (inp);

	if (FUNC1(tp->t_flags))
		FUNC5(tp);
	
	tp = FUNC4(tp, errno);
	if (tp != NULL)
		return (inp);
	else
		return (NULL);
}