#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct tcphdr {int /*<<< orphan*/  th_ack; } ;
struct tcpcb {int t_flags; int snd_ssthresh; int snd_cwnd; int snd_cwnd_prev; int snd_ssthresh_prev; TYPE_2__* ccv; int /*<<< orphan*/  t_badrxtwin; scalar_t__ snd_max; scalar_t__ snd_nxt; scalar_t__ snd_recover_prev; scalar_t__ snd_recover; int /*<<< orphan*/  snd_wnd; int /*<<< orphan*/  t_bytes_acked; int /*<<< orphan*/  t_dupacks; scalar_t__ snd_una; scalar_t__ t_fb_ptr; int /*<<< orphan*/  t_inpcb; } ;
struct TYPE_4__ {int rc_prr_sndcnt; scalar_t__ rc_prr_recovery_fs; int /*<<< orphan*/  rc_loss_count; int /*<<< orphan*/  rc_prr_out; int /*<<< orphan*/  rc_prr_delivered; int /*<<< orphan*/  rc_tlp_rtx_out; } ;
struct tcp_rack {TYPE_1__ r_ctl; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* cong_signal ) (TYPE_2__*,int) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  curack; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct tcpcb*) ; 
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
 int TF_WASCRECOVERY ; 
 int TF_WASFRECOVERY ; 
 int FUNC8 (struct tcpcb*) ; 
 int FUNC9 (int,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct tcp_rack*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  tcps_ecn_rcwnd ; 
 int /*<<< orphan*/  tcps_sndrexmitbad ; 

__attribute__((used)) static void
FUNC13(struct tcpcb *tp, struct tcphdr *th, uint32_t type)
{
	struct tcp_rack *rack;

	FUNC4(tp->t_inpcb);

	rack = (struct tcp_rack *)tp->t_fb_ptr;
	switch (type) {
	case CC_NDUPACK:
		tp->t_flags &= ~TF_WASFRECOVERY;
		tp->t_flags &= ~TF_WASCRECOVERY;
		if (!FUNC6(tp->t_flags)) {
			rack->r_ctl.rc_tlp_rtx_out = 0;
			rack->r_ctl.rc_prr_delivered = 0;
			rack->r_ctl.rc_prr_out = 0;
			rack->r_ctl.rc_loss_count = 0;
			rack->r_ctl.rc_prr_sndcnt = FUNC8(tp);
			FUNC11(rack, 2);
			rack->r_ctl.rc_prr_recovery_fs = tp->snd_max - tp->snd_una;
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
		tp->t_dupacks = 0;
		tp->t_bytes_acked = 0;
		FUNC3(tp->t_flags);
		tp->snd_ssthresh = FUNC9(2, FUNC10(tp->snd_wnd, tp->snd_cwnd) / 2 /
		    FUNC8(tp)) * FUNC8(tp);
		tp->snd_cwnd = FUNC8(tp);
		break;
	case CC_RTO_ERR:
		FUNC7(tcps_sndrexmitbad);
		/* RTO was unnecessary, so reset everything. */
		tp->snd_cwnd = tp->snd_cwnd_prev;
		tp->snd_ssthresh = tp->snd_ssthresh_prev;
		tp->snd_recover = tp->snd_recover_prev;
		if (tp->t_flags & TF_WASFRECOVERY) {
			FUNC2(tp->t_flags);
			tp->t_flags &= ~TF_WASFRECOVERY;
		}
		if (tp->t_flags & TF_WASCRECOVERY) {
			FUNC1(tp->t_flags);
			tp->t_flags &= ~TF_WASCRECOVERY;
		}
		tp->snd_nxt = tp->snd_max;
		tp->t_badrxtwin = 0;
		break;
	}

	if (FUNC0(tp)->cong_signal != NULL) {
		if (th != NULL)
			tp->ccv->curack = th->th_ack;
		FUNC0(tp)->cong_signal(tp->ccv, type);
	}
}