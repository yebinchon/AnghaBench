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
struct tcpcb {int t_delayed_ack; scalar_t__ snd_una; scalar_t__ snd_max; int /*<<< orphan*/ * t_fb_ptr; int /*<<< orphan*/  snd_wnd; TYPE_1__* t_inpcb; } ;
struct TYPE_4__ {int /*<<< orphan*/  rc_tmap; int /*<<< orphan*/  rc_mtree; int /*<<< orphan*/  rc_tlp_rxt_last_time; int /*<<< orphan*/  rc_last_ack; int /*<<< orphan*/  rc_last_time_decay; int /*<<< orphan*/  rc_min_to; int /*<<< orphan*/  rc_prr_sendalot; int /*<<< orphan*/  rc_rate_sample_method; int /*<<< orphan*/  rc_high_rwnd; int /*<<< orphan*/  rc_early_recovery; int /*<<< orphan*/  rc_tlp_cwnd_reduce; int /*<<< orphan*/  rc_prop_rate; int /*<<< orphan*/  rc_prop_reduce; int /*<<< orphan*/  rc_pkt_delay; int /*<<< orphan*/  rc_reorder_shift; int /*<<< orphan*/  rc_tlp_threshold; int /*<<< orphan*/  rc_reorder_fade; int /*<<< orphan*/  rc_free; } ;
struct tcp_rack {int use_rack_cheat; int do_detection; TYPE_2__ r_ctl; int /*<<< orphan*/  rack_per_of_gp; int /*<<< orphan*/  rack_tlp_threshold_use; int /*<<< orphan*/  rc_always_pace; int /*<<< orphan*/  r_enforce_min_pace; int /*<<< orphan*/  rc_pace_max_segs; int /*<<< orphan*/  rc_pace_reduce; int /*<<< orphan*/  rc_allow_data_af_clo; scalar_t__ r_cpu; TYPE_1__* rc_inp; struct tcpcb* rc_tp; } ;
struct rack_sendmap {int r_rtr_cnt; scalar_t__ r_start; scalar_t__ r_end; int r_in_tmap; scalar_t__ r_dupack; scalar_t__ r_rtr_bytes; int /*<<< orphan*/ * r_tim_lastsent; int /*<<< orphan*/  r_flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  inp_flags2; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  INP_SUPPORTS_MBUFQ ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  RACK_OVERMAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct rack_sendmap* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct rack_sendmap*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct rack_sendmap*,int /*<<< orphan*/ ) ; 
 scalar_t__ V_tcp_delack_enabled ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct rack_sendmap*,struct tcp_rack*,struct rack_sendmap*) ; 
 int /*<<< orphan*/  r_tnext ; 
 struct rack_sendmap* FUNC7 (struct tcp_rack*) ; 
 int /*<<< orphan*/  FUNC8 (struct tcp_rack*) ; 
 int /*<<< orphan*/  rack_early_recovery ; 
 int /*<<< orphan*/  rack_hptsi_segments ; 
 int /*<<< orphan*/  rack_ignore_data_after_close ; 
 int /*<<< orphan*/  rack_lower_cwnd_at_tlp ; 
 int /*<<< orphan*/  rack_min_pace_time ; 
 int /*<<< orphan*/  rack_min_to ; 
 int /*<<< orphan*/  rack_pace_every_seg ; 
 int /*<<< orphan*/  rack_pcb_zone ; 
 int /*<<< orphan*/  rack_per_of_gp ; 
 int /*<<< orphan*/  rack_pkt_delay ; 
 int /*<<< orphan*/  rack_proportional_rate ; 
 int /*<<< orphan*/  rack_rate_sample_method ; 
 int /*<<< orphan*/  rack_rb_tree_head ; 
 int /*<<< orphan*/  rack_reorder_fade ; 
 int /*<<< orphan*/  rack_reorder_thresh ; 
 int /*<<< orphan*/  rack_send_a_lot_in_prr ; 
 int /*<<< orphan*/  FUNC9 (struct tcpcb*,struct tcp_rack*) ; 
 int /*<<< orphan*/  rack_slot_reduction ; 
 int /*<<< orphan*/  FUNC10 (struct tcp_rack*,struct tcpcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct tcpcb*) ; 
 int /*<<< orphan*/  rack_tlp_thresh ; 
 int /*<<< orphan*/  rack_tlp_threshold_use ; 
 int /*<<< orphan*/  rack_use_proportional_reduce ; 
 scalar_t__ tcp_force_detection ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ use_rack_cheat ; 

__attribute__((used)) static int
FUNC15(struct tcpcb *tp)
{
	struct tcp_rack *rack = NULL;
	struct rack_sendmap *insret;

	tp->t_fb_ptr = FUNC13(rack_pcb_zone, M_NOWAIT);
	if (tp->t_fb_ptr == NULL) {
		/*
		 * We need to allocate memory but cant. The INP and INP_INFO
		 * locks and they are recusive (happens during setup. So a
		 * scheme to drop the locks fails :(
		 *
		 */
		return (ENOMEM);
	}
	FUNC4(tp->t_fb_ptr, 0, sizeof(struct tcp_rack));

	rack = (struct tcp_rack *)tp->t_fb_ptr;
	FUNC0(&rack->r_ctl.rc_mtree);
	FUNC2(&rack->r_ctl.rc_free);
	FUNC2(&rack->r_ctl.rc_tmap);
	rack->rc_tp = tp;
	if (tp->t_inpcb) {
		rack->rc_inp = tp->t_inpcb;
	}
	tp->t_inpcb->inp_flags2 |= INP_SUPPORTS_MBUFQ;
	/* Probably not needed but lets be sure */
	FUNC8(rack);
	rack->r_cpu = 0;
	rack->r_ctl.rc_reorder_fade = rack_reorder_fade;
	rack->rc_allow_data_af_clo = rack_ignore_data_after_close;
	rack->r_ctl.rc_tlp_threshold = rack_tlp_thresh;
	rack->rc_pace_reduce = rack_slot_reduction;
	if (use_rack_cheat)
		rack->use_rack_cheat = 1;
	if (V_tcp_delack_enabled)
		tp->t_delayed_ack = 1;
	else
		tp->t_delayed_ack = 0;
	rack->rc_pace_max_segs = rack_hptsi_segments;
	rack->r_ctl.rc_reorder_shift = rack_reorder_thresh;
	rack->r_ctl.rc_pkt_delay = rack_pkt_delay;
	rack->r_ctl.rc_prop_reduce = rack_use_proportional_reduce;
	rack->r_enforce_min_pace = rack_min_pace_time;
	rack->r_ctl.rc_prop_rate = rack_proportional_rate;
	rack->r_ctl.rc_tlp_cwnd_reduce = rack_lower_cwnd_at_tlp;
	rack->r_ctl.rc_early_recovery = rack_early_recovery;
	rack->rc_always_pace = rack_pace_every_seg;
	FUNC9(tp, rack);
	rack->r_ctl.rc_high_rwnd = tp->snd_wnd;
	rack->r_ctl.rc_rate_sample_method = rack_rate_sample_method;
	rack->rack_tlp_threshold_use = rack_tlp_threshold_use;
	rack->r_ctl.rc_prr_sendalot = rack_send_a_lot_in_prr;
	rack->r_ctl.rc_min_to = rack_min_to;
	rack->rack_per_of_gp = rack_per_of_gp;
	FUNC5(&rack->r_ctl.rc_last_ack);
	rack->r_ctl.rc_last_time_decay = rack->r_ctl.rc_last_ack;
	rack->r_ctl.rc_tlp_rxt_last_time = FUNC12();
	/* Do we force on detection? */
	if (tcp_force_detection)
		rack->do_detection = 1;
	else
		rack->do_detection = 0;
	if (tp->snd_una != tp->snd_max) {
		/* Create a send map for the current outstanding data */
		struct rack_sendmap *rsm;

		rsm = FUNC7(rack);
		if (rsm == NULL) {
			FUNC14(rack_pcb_zone, tp->t_fb_ptr);
			tp->t_fb_ptr = NULL;
			return (ENOMEM);
		}
		rsm->r_flags = RACK_OVERMAX;
		rsm->r_tim_lastsent[0] = rack->r_ctl.rc_tlp_rxt_last_time;
		rsm->r_rtr_cnt = 1;
		rsm->r_rtr_bytes = 0;
		rsm->r_start = tp->snd_una;
		rsm->r_end = tp->snd_max;
		rsm->r_dupack = 0;
		insret = FUNC1(rack_rb_tree_head, &rack->r_ctl.rc_mtree, rsm);
#ifdef INVARIANTS
		if (insret != NULL) {
			panic("Insert in rb tree fails ret:%p rack:%p rsm:%p",
			      insret, rack, rsm);
		}
#endif
		FUNC3(&rack->r_ctl.rc_tmap, rsm, r_tnext);
		rsm->r_in_tmap = 1;
	}
	FUNC11(tp);
	FUNC10(rack, tp, FUNC12(), 0, 0, 0);
	return (0);
}