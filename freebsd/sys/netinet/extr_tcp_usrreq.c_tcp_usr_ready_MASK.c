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
struct socket {int /*<<< orphan*/  so_snd; } ;
struct mbuf {int dummy; } ;
struct inpcb {int inp_flags; } ;
struct TYPE_2__ {int (* tfb_tcp_output ) (struct tcpcb*) ;} ;

/* Variables and functions */
 int ECONNRESET ; 
 int INP_DROPPED ; 
 int INP_TIMEWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC1 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct tcpcb* FUNC4 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct mbuf*,int) ; 
 struct inpcb* FUNC7 (struct socket*) ; 
 int FUNC8 (struct tcpcb*) ; 

__attribute__((used)) static int
FUNC9(struct socket *so, struct mbuf *m, int count)
{
	struct inpcb *inp;
	struct tcpcb *tp;
	int error;

	inp = FUNC7(so);
	FUNC0(inp);
	if (inp->inp_flags & (INP_TIMEWAIT | INP_DROPPED)) {
		FUNC1(inp);
		FUNC5(m, count);
		return (ECONNRESET);
	}
	tp = FUNC4(inp);

	FUNC2(&so->so_snd);
	error = FUNC6(&so->so_snd, m, count);
	FUNC3(&so->so_snd);
	if (error == 0)
		error = tp->t_fb->tfb_tcp_output(tp);
	FUNC1(inp);

	return (error);
}