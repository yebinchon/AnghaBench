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
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  tcp_seq ;
struct tcphdr {int /*<<< orphan*/  th_ack; } ;
struct tcpcb {scalar_t__ snd_cwnd; int /*<<< orphan*/  snd_nxt; TYPE_1__* t_fb; int /*<<< orphan*/  t_flags; scalar_t__ t_rtttime; int /*<<< orphan*/  t_inpcb; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* tfb_tcp_output ) (struct tcpcb*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tcpcb*,struct tcphdr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TF_ACKNOW ; 
 int /*<<< orphan*/  TT_REXMT ; 
 int /*<<< orphan*/  FUNC3 (struct tcpcb*) ; 
 scalar_t__ FUNC4 (struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC5 (struct tcpcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC6(struct tcpcb *tp, struct tcphdr *th)
{
	tcp_seq onxt = tp->snd_nxt;
	uint32_t ocwnd = tp->snd_cwnd;
	u_int maxseg = FUNC4(tp);

	FUNC1(tp->t_inpcb);

	FUNC5(tp, TT_REXMT, 0);
	tp->t_rtttime = 0;
	tp->snd_nxt = th->th_ack;
	/*
	 * Set snd_cwnd to one segment beyond acknowledged offset.
	 * (tp->snd_una has not yet been updated when this function is called.)
	 */
	tp->snd_cwnd = maxseg + FUNC0(tp, th);
	tp->t_flags |= TF_ACKNOW;
	(void) tp->t_fb->tfb_tcp_output(tp);
	tp->snd_cwnd = ocwnd;
	if (FUNC2(onxt, tp->snd_nxt))
		tp->snd_nxt = onxt;
	/*
	 * Partial window deflation.  Relies on fact that tp->snd_una
	 * not updated yet.
	 */
	if (tp->snd_cwnd > FUNC0(tp, th))
		tp->snd_cwnd -= FUNC0(tp, th);
	else
		tp->snd_cwnd = 0;
	tp->snd_cwnd += maxseg;
}