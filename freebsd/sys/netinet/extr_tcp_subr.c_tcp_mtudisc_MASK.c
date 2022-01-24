#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tcpcb {scalar_t__ t_maxseg; int t_flags; TYPE_1__* t_fb; int /*<<< orphan*/  snd_max; int /*<<< orphan*/  snd_recover; int /*<<< orphan*/  snd_una; int /*<<< orphan*/  snd_nxt; scalar_t__ t_rtttime; } ;
struct TYPE_5__ {scalar_t__ sb_hiwat; } ;
struct socket {TYPE_2__ so_snd; } ;
struct inpcb {int inp_flags; struct socket* inp_socket; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* tfb_tcp_output ) (struct tcpcb*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int INP_DROPPED ; 
 int INP_TIMEWAIT ; 
 int /*<<< orphan*/  FUNC1 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int TF_SACK_PERMIT ; 
 struct tcpcb* FUNC6 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC7 (struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC8 (struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC9 (struct tcpcb*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tcps_mturesent ; 

__attribute__((used)) static void
FUNC10(struct inpcb *inp, int mtuoffer)
{
	struct tcpcb *tp;
	struct socket *so;

	FUNC1(inp);
	if ((inp->inp_flags & INP_TIMEWAIT) ||
	    (inp->inp_flags & INP_DROPPED))
		return;

	tp = FUNC6(inp);
	FUNC2(tp != NULL, ("tcp_mtudisc: tp == NULL"));

	FUNC9(tp, -1, mtuoffer, NULL, NULL);
  
	so = inp->inp_socket;
	FUNC3(&so->so_snd);
	/* If the mss is larger than the socket buffer, decrease the mss. */
	if (so->so_snd.sb_hiwat < tp->t_maxseg)
		tp->t_maxseg = so->so_snd.sb_hiwat;
	FUNC4(&so->so_snd);

	FUNC5(tcps_mturesent);
	tp->t_rtttime = 0;
	tp->snd_nxt = tp->snd_una;
	FUNC8(tp);
	tp->snd_recover = tp->snd_max;
	if (tp->t_flags & TF_SACK_PERMIT)
		FUNC0(tp->t_flags);
	tp->t_fb->tfb_tcp_output(tp);
}