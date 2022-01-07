
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcpcb {int t_delayed_ack; scalar_t__ snd_una; scalar_t__ snd_max; int * t_fb_ptr; int snd_wnd; TYPE_1__* t_inpcb; } ;
struct TYPE_4__ {int rc_tmap; int rc_mtree; int rc_tlp_rxt_last_time; int rc_last_ack; int rc_last_time_decay; int rc_min_to; int rc_prr_sendalot; int rc_rate_sample_method; int rc_high_rwnd; int rc_early_recovery; int rc_tlp_cwnd_reduce; int rc_prop_rate; int rc_prop_reduce; int rc_pkt_delay; int rc_reorder_shift; int rc_tlp_threshold; int rc_reorder_fade; int rc_free; } ;
struct tcp_rack {int use_rack_cheat; int do_detection; TYPE_2__ r_ctl; int rack_per_of_gp; int rack_tlp_threshold_use; int rc_always_pace; int r_enforce_min_pace; int rc_pace_max_segs; int rc_pace_reduce; int rc_allow_data_af_clo; scalar_t__ r_cpu; TYPE_1__* rc_inp; struct tcpcb* rc_tp; } ;
struct rack_sendmap {int r_rtr_cnt; scalar_t__ r_start; scalar_t__ r_end; int r_in_tmap; scalar_t__ r_dupack; scalar_t__ r_rtr_bytes; int * r_tim_lastsent; int r_flags; } ;
struct TYPE_3__ {int inp_flags2; } ;


 int ENOMEM ;
 int INP_SUPPORTS_MBUFQ ;
 int M_NOWAIT ;
 int RACK_OVERMAX ;
 int RB_INIT (int *) ;
 struct rack_sendmap* RB_INSERT (int ,int *,struct rack_sendmap*) ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct rack_sendmap*,int ) ;
 scalar_t__ V_tcp_delack_enabled ;
 int memset (int *,int ,int) ;
 int microuptime (int *) ;
 int panic (char*,struct rack_sendmap*,struct tcp_rack*,struct rack_sendmap*) ;
 int r_tnext ;
 struct rack_sendmap* rack_alloc (struct tcp_rack*) ;
 int rack_clear_rate_sample (struct tcp_rack*) ;
 int rack_early_recovery ;
 int rack_hptsi_segments ;
 int rack_ignore_data_after_close ;
 int rack_lower_cwnd_at_tlp ;
 int rack_min_pace_time ;
 int rack_min_to ;
 int rack_pace_every_seg ;
 int rack_pcb_zone ;
 int rack_per_of_gp ;
 int rack_pkt_delay ;
 int rack_proportional_rate ;
 int rack_rate_sample_method ;
 int rack_rb_tree_head ;
 int rack_reorder_fade ;
 int rack_reorder_thresh ;
 int rack_send_a_lot_in_prr ;
 int rack_set_pace_segments (struct tcpcb*,struct tcp_rack*) ;
 int rack_slot_reduction ;
 int rack_start_hpts_timer (struct tcp_rack*,struct tcpcb*,int ,int ,int ,int ) ;
 int rack_stop_all_timers (struct tcpcb*) ;
 int rack_tlp_thresh ;
 int rack_tlp_threshold_use ;
 int rack_use_proportional_reduce ;
 scalar_t__ tcp_force_detection ;
 int tcp_ts_getticks () ;
 int * uma_zalloc (int ,int ) ;
 int uma_zfree (int ,int *) ;
 scalar_t__ use_rack_cheat ;

__attribute__((used)) static int
rack_init(struct tcpcb *tp)
{
 struct tcp_rack *rack = ((void*)0);
 struct rack_sendmap *insret;

 tp->t_fb_ptr = uma_zalloc(rack_pcb_zone, M_NOWAIT);
 if (tp->t_fb_ptr == ((void*)0)) {






  return (ENOMEM);
 }
 memset(tp->t_fb_ptr, 0, sizeof(struct tcp_rack));

 rack = (struct tcp_rack *)tp->t_fb_ptr;
 RB_INIT(&rack->r_ctl.rc_mtree);
 TAILQ_INIT(&rack->r_ctl.rc_free);
 TAILQ_INIT(&rack->r_ctl.rc_tmap);
 rack->rc_tp = tp;
 if (tp->t_inpcb) {
  rack->rc_inp = tp->t_inpcb;
 }
 tp->t_inpcb->inp_flags2 |= INP_SUPPORTS_MBUFQ;

 rack_clear_rate_sample(rack);
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
 rack_set_pace_segments(tp, rack);
 rack->r_ctl.rc_high_rwnd = tp->snd_wnd;
 rack->r_ctl.rc_rate_sample_method = rack_rate_sample_method;
 rack->rack_tlp_threshold_use = rack_tlp_threshold_use;
 rack->r_ctl.rc_prr_sendalot = rack_send_a_lot_in_prr;
 rack->r_ctl.rc_min_to = rack_min_to;
 rack->rack_per_of_gp = rack_per_of_gp;
 microuptime(&rack->r_ctl.rc_last_ack);
 rack->r_ctl.rc_last_time_decay = rack->r_ctl.rc_last_ack;
 rack->r_ctl.rc_tlp_rxt_last_time = tcp_ts_getticks();

 if (tcp_force_detection)
  rack->do_detection = 1;
 else
  rack->do_detection = 0;
 if (tp->snd_una != tp->snd_max) {

  struct rack_sendmap *rsm;

  rsm = rack_alloc(rack);
  if (rsm == ((void*)0)) {
   uma_zfree(rack_pcb_zone, tp->t_fb_ptr);
   tp->t_fb_ptr = ((void*)0);
   return (ENOMEM);
  }
  rsm->r_flags = RACK_OVERMAX;
  rsm->r_tim_lastsent[0] = rack->r_ctl.rc_tlp_rxt_last_time;
  rsm->r_rtr_cnt = 1;
  rsm->r_rtr_bytes = 0;
  rsm->r_start = tp->snd_una;
  rsm->r_end = tp->snd_max;
  rsm->r_dupack = 0;
  insret = RB_INSERT(rack_rb_tree_head, &rack->r_ctl.rc_mtree, rsm);






  TAILQ_INSERT_TAIL(&rack->r_ctl.rc_tmap, rsm, r_tnext);
  rsm->r_in_tmap = 1;
 }
 rack_stop_all_timers(tp);
 rack_start_hpts_timer(rack, tp, tcp_ts_getticks(), 0, 0, 0);
 return (0);
}
