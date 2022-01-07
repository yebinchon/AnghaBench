
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int rc_num_small_maps_alloced; int rc_pace_max_segs; } ;
struct tcp_bbr {TYPE_2__ r_ctl; scalar_t__ rc_last_options; TYPE_1__* rc_tp; } ;
struct bbr_sendmap {int r_start; int r_end; int r_rtr_cnt; int r_is_smallmap; int * r_tim_lastsent; int r_bbr_state; int r_flight_at_send; int r_first_sent_time; int r_app_limited; int r_del_time; int r_del_ack_ts; int r_ts_valid; int r_delivered; int r_is_drain; int r_is_gain; scalar_t__ r_rtr_bytes; int r_dupack; int r_flags; } ;
struct TYPE_3__ {scalar_t__ t_maxseg; } ;


 int BBR_HAS_FIN ;
 int BBR_HAS_SYN ;
 int min (scalar_t__,int ) ;

__attribute__((used)) static __inline void
bbr_clone_rsm(struct tcp_bbr *bbr, struct bbr_sendmap *nrsm, struct bbr_sendmap *rsm, uint32_t start)
{
 int idx;

 nrsm->r_start = start;
 nrsm->r_end = rsm->r_end;
 nrsm->r_rtr_cnt = rsm->r_rtr_cnt;
 nrsm->r_flags = rsm->r_flags;

 nrsm->r_flags &= ~BBR_HAS_SYN;

 rsm->r_flags &= ~BBR_HAS_FIN;
 nrsm->r_dupack = rsm->r_dupack;
 nrsm->r_rtr_bytes = 0;
 nrsm->r_is_gain = rsm->r_is_gain;
 nrsm->r_is_drain = rsm->r_is_drain;
 nrsm->r_delivered = rsm->r_delivered;
 nrsm->r_ts_valid = rsm->r_ts_valid;
 nrsm->r_del_ack_ts = rsm->r_del_ack_ts;
 nrsm->r_del_time = rsm->r_del_time;
 nrsm->r_app_limited = rsm->r_app_limited;
 nrsm->r_first_sent_time = rsm->r_first_sent_time;
 nrsm->r_flight_at_send = rsm->r_flight_at_send;

 nrsm->r_bbr_state = rsm->r_bbr_state;
 for (idx = 0; idx < nrsm->r_rtr_cnt; idx++) {
  nrsm->r_tim_lastsent[idx] = rsm->r_tim_lastsent[idx];
 }
 rsm->r_end = nrsm->r_start;
 idx = min((bbr->rc_tp->t_maxseg - bbr->rc_last_options), bbr->r_ctl.rc_pace_max_segs);
 idx /= 8;

 if ((rsm->r_is_smallmap == 0) &&
     ((rsm->r_end - rsm->r_start) <= idx)) {
  bbr->r_ctl.rc_num_small_maps_alloced++;
  rsm->r_is_smallmap = 1;
 }

 if ((nrsm->r_end - nrsm->r_start) <= idx) {
  bbr->r_ctl.rc_num_small_maps_alloced++;
  nrsm->r_is_smallmap = 1;
 }
}
