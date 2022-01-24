#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int u_int ;
struct tcphdr {int /*<<< orphan*/  th_ack; } ;
struct tcpcb {int t_flags; int snd_ssthresh; int snd_cwnd; int snd_cwnd_prev; int snd_ssthresh_prev; TYPE_1__* ccv; int /*<<< orphan*/  t_badrxtwin; int /*<<< orphan*/  snd_max; int /*<<< orphan*/  snd_nxt; int /*<<< orphan*/  snd_recover_prev; int /*<<< orphan*/  snd_recover; int /*<<< orphan*/  snd_wnd; int /*<<< orphan*/  t_bytes_acked; int /*<<< orphan*/  t_dupacks; int /*<<< orphan*/  t_inpcb; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* cong_signal ) (TYPE_1__*,int) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  curack; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct tcpcb*) ; 
#define  CC_ECN 131 
#define  CC_NDUPACK 130 
#define  CC_RTO 129 
#define  CC_RTO_ERR 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int TF_ECN_PERMIT ; 
 int TF_ECN_SND_CWR ; 
 int TF_PREVVALID ; 
 int TF_WASCRECOVERY ; 
 int TF_WASFRECOVERY ; 
 int FUNC8 (int,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int FUNC11 (struct tcpcb*) ; 
 int /*<<< orphan*/  tcps_ecn_rcwnd ; 
 int /*<<< orphan*/  tcps_sndrexmitbad ; 

void inline
FUNC12(struct tcpcb *tp, struct tcphdr *th, uint32_t type)
{
	u_int maxseg;

	FUNC4(tp->t_inpcb);

	switch(type) {
	case CC_NDUPACK:
		if (!FUNC6(tp->t_flags)) {
			tp->snd_recover = tp->snd_max;
			if (tp->t_flags & TF_ECN_PERMIT)
				tp->t_flags |= TF_ECN_SND_CWR;
		}
		break;
	case CC_ECN:
		if (!FUNC5(tp->t_flags)) {
			FUNC7(tcps_ecn_rcwnd);
			tp->snd_recover = tp->snd_max;
			if (tp->t_flags & TF_ECN_PERMIT)
				tp->t_flags |= TF_ECN_SND_CWR;
		}
		break;
	case CC_RTO:
		maxseg = FUNC11(tp);
		tp->t_dupacks = 0;
		tp->t_bytes_acked = 0;
		FUNC3(tp->t_flags);
		tp->snd_ssthresh = FUNC8(2, FUNC9(tp->snd_wnd, tp->snd_cwnd) / 2 /
		    maxseg) * maxseg;
		tp->snd_cwnd = maxseg;
		break;
	case CC_RTO_ERR:
		FUNC7(tcps_sndrexmitbad);
		/* RTO was unnecessary, so reset everything. */
		tp->snd_cwnd = tp->snd_cwnd_prev;
		tp->snd_ssthresh = tp->snd_ssthresh_prev;
		tp->snd_recover = tp->snd_recover_prev;
		if (tp->t_flags & TF_WASFRECOVERY)
			FUNC2(tp->t_flags);
		if (tp->t_flags & TF_WASCRECOVERY)
			FUNC1(tp->t_flags);
		tp->snd_nxt = tp->snd_max;
		tp->t_flags &= ~TF_PREVVALID;
		tp->t_badrxtwin = 0;
		break;
	}

	if (FUNC0(tp)->cong_signal != NULL) {
		if (th != NULL)
			tp->ccv->curack = th->th_ack;
		FUNC0(tp)->cong_signal(tp->ccv, type);
	}
}