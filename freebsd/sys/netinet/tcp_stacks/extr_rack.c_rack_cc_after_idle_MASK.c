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
typedef  scalar_t__ uint32_t ;
struct tcpcb {scalar_t__ t_state; int snd_cwnd; scalar_t__ t_maxseg; int /*<<< orphan*/  ccv; int /*<<< orphan*/  t_inpcb; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* after_idle ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ TCPS_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tcpcb*) ; 
 int /*<<< orphan*/  tcps_idle_estrestarts ; 
 int /*<<< orphan*/  tcps_idle_restarts ; 

__attribute__((used)) static inline void
FUNC6(struct tcpcb *tp)
{
	uint32_t i_cwnd;

	FUNC1(tp->t_inpcb);

#ifdef NETFLIX_STATS
	TCPSTAT_INC(tcps_idle_restarts);
	if (tp->t_state == TCPS_ESTABLISHED)
		TCPSTAT_INC(tcps_idle_estrestarts);
#endif
	if (FUNC0(tp)->after_idle != NULL)
		FUNC0(tp)->after_idle(tp->ccv);

	if (tp->snd_cwnd == 1)
		i_cwnd = tp->t_maxseg;		/* SYN(-ACK) lost */
	else 
		i_cwnd = FUNC4(FUNC5(tp));

	/*
	 * Being idle is no differnt than the initial window. If the cc
	 * clamps it down below the initial window raise it to the initial
	 * window.
	 */
	if (tp->snd_cwnd < i_cwnd) {
		tp->snd_cwnd = i_cwnd;
	}
}