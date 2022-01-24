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
struct tcpcb {int /*<<< orphan*/  snd_max; int /*<<< orphan*/  snd_nxt; struct bbr_sendmap* t_fb_ptr; TYPE_1__* t_inpcb; } ;
struct TYPE_4__ {int rc_high_rwnd; int rc_init_rwnd; scalar_t__ rc_free_cnt; int /*<<< orphan*/  rc_free; int /*<<< orphan*/  rc_map; scalar_t__ crte; } ;
struct tcp_bbr {TYPE_2__ r_ctl; scalar_t__ bbr_hdrw_pacing; int /*<<< orphan*/ * rc_tp; } ;
struct bbr_sendmap {int dummy; } ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_3__ {int /*<<< orphan*/  inp_flags2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INP_CANNOT_DO_ECN ; 
 int /*<<< orphan*/  INP_MBUF_QUEUE_READY ; 
 int /*<<< orphan*/  INP_SUPPORTS_MBUFQ ; 
 struct bbr_sendmap* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bbr_sendmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bbr_dynamic_rwnd ; 
 int /*<<< orphan*/  bbr_flows_nohdwr_pacing ; 
 int /*<<< orphan*/  bbr_flows_whdwr_pacing ; 
 int /*<<< orphan*/  FUNC3 (struct tcp_bbr*) ; 
 int /*<<< orphan*/  bbr_pcb_zone ; 
 int /*<<< orphan*/  bbr_static_rwnd ; 
 int /*<<< orphan*/  bbr_zone ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  r_next ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct bbr_sendmap*) ; 

__attribute__((used)) static void
FUNC7(struct tcpcb *tp, int32_t tcb_is_purged)
{
	if (tp->t_fb_ptr) {
		uint32_t calc;
		struct tcp_bbr *bbr;
		struct bbr_sendmap *rsm;

		bbr = (struct tcp_bbr *)tp->t_fb_ptr;
		if (bbr->r_ctl.crte)
			FUNC5(bbr->r_ctl.crte, bbr->rc_tp);
		FUNC3(bbr);
		bbr->rc_tp = NULL;
		if (tp->t_inpcb) {
			/* Backout any flags2 we applied */
			tp->t_inpcb->inp_flags2 &= ~INP_CANNOT_DO_ECN;
			tp->t_inpcb->inp_flags2 &= ~INP_SUPPORTS_MBUFQ;
			tp->t_inpcb->inp_flags2 &= ~INP_MBUF_QUEUE_READY;
		}
		if (bbr->bbr_hdrw_pacing)
			FUNC4(bbr_flows_whdwr_pacing, -1);
		else
			FUNC4(bbr_flows_nohdwr_pacing, -1);
		rsm = FUNC1(&bbr->r_ctl.rc_map);
		while (rsm) {
			FUNC2(&bbr->r_ctl.rc_map, rsm, r_next);
			FUNC6(bbr_zone, rsm);
			rsm = FUNC1(&bbr->r_ctl.rc_map);
		}
		rsm = FUNC1(&bbr->r_ctl.rc_free);
		while (rsm) {
			FUNC2(&bbr->r_ctl.rc_free, rsm, r_next);
			FUNC6(bbr_zone, rsm);
			rsm = FUNC1(&bbr->r_ctl.rc_free);
		}
		calc = bbr->r_ctl.rc_high_rwnd - bbr->r_ctl.rc_init_rwnd;
		if (calc > (bbr->r_ctl.rc_init_rwnd / 10))
			FUNC0(bbr_dynamic_rwnd);
		else
			FUNC0(bbr_static_rwnd);
		bbr->r_ctl.rc_free_cnt = 0;
		FUNC6(bbr_pcb_zone, tp->t_fb_ptr);
		tp->t_fb_ptr = NULL;
	}
	/* Make sure snd_nxt is correctly set */
	tp->snd_nxt = tp->snd_max;
}