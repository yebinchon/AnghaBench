
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct tcp_hwrate_limit_table {int time_between; TYPE_2__* ptbl; } ;
struct TYPE_6__ {int rc_pace_max_segs; int bbr_hptsi_segments_delay_tar; struct tcp_hwrate_limit_table* crte; } ;
struct tcp_bbr {scalar_t__ bbr_hdrw_pacing; scalar_t__ hw_pacing_set; scalar_t__ rc_last_options; TYPE_3__ r_ctl; TYPE_1__* rc_tp; } ;
struct TYPE_5__ {int rs_min_seg; } ;
struct TYPE_4__ {scalar_t__ t_maxseg; int t_flags; } ;


 int BBR_MIN_SEG ;
 int BBR_UNIT ;
 scalar_t__ IN_RECOVERY (int ) ;
 int PACE_MAX_IP_BYTES ;
 int bbr_get_pacing_delay (struct tcp_bbr*,int ,int,int,int) ;
 int bbr_hdwr_pace_adjust ;
 scalar_t__ bbr_hdwr_pace_floor ;
 int bbr_log_type_tsosize (struct tcp_bbr*,int,int,int,int,int,int) ;
 int max (int,int) ;

__attribute__((used)) static void
bbr_adjust_for_hw_pacing(struct tcp_bbr *bbr, uint32_t cts)
{





 const struct tcp_hwrate_limit_table *rlp;
 uint32_t cur_delay, seg_sz, maxseg, new_tso, delta, hdwr_delay;

 if ((bbr->bbr_hdrw_pacing == 0) ||
     (IN_RECOVERY(bbr->rc_tp->t_flags)) ||
     (bbr->r_ctl.crte == ((void*)0)))
  return;
 if (bbr->hw_pacing_set == 0) {

  return;
 }
 if (bbr_hdwr_pace_adjust == 0) {

  return;
 }
 rlp = bbr->r_ctl.crte;
 if (bbr->rc_tp->t_maxseg > bbr->rc_last_options)
  maxseg = bbr->rc_tp->t_maxseg - bbr->rc_last_options;
 else
  maxseg = BBR_MIN_SEG - bbr->rc_last_options;






 cur_delay = bbr_get_pacing_delay(bbr, BBR_UNIT,
          bbr->r_ctl.rc_pace_max_segs, cts, 1);
 hdwr_delay = bbr->r_ctl.rc_pace_max_segs / maxseg;
 hdwr_delay *= rlp->time_between;
 if (cur_delay > hdwr_delay)
  delta = cur_delay - hdwr_delay;
 else
  delta = 0;
 bbr_log_type_tsosize(bbr, cts, delta, cur_delay, hdwr_delay,
        (bbr->r_ctl.rc_pace_max_segs / maxseg),
        1);
 if (delta &&
     (delta < (max(rlp->time_between,
     bbr->r_ctl.bbr_hptsi_segments_delay_tar)))) {
  seg_sz = max(((cur_delay + rlp->time_between)/rlp->time_between),
        (bbr->r_ctl.rc_pace_max_segs/maxseg));
  seg_sz *= bbr_hdwr_pace_adjust;
  if (bbr_hdwr_pace_floor &&
      (seg_sz < bbr->r_ctl.crte->ptbl->rs_min_seg)) {





   seg_sz = bbr->r_ctl.crte->ptbl->rs_min_seg;
  }
  seg_sz *= maxseg;
 } else if (delta == 0) {
  seg_sz = bbr->r_ctl.rc_pace_max_segs * bbr_hdwr_pace_adjust;
  if (bbr_hdwr_pace_floor &&
      (seg_sz < bbr->r_ctl.crte->ptbl->rs_min_seg)) {





   seg_sz = bbr->r_ctl.crte->ptbl->rs_min_seg;
  }
 } else {
  seg_sz = bbr->r_ctl.rc_pace_max_segs;
 }
 if (seg_sz > bbr->r_ctl.rc_pace_max_segs)
  new_tso = seg_sz;
 else
  new_tso = bbr->r_ctl.rc_pace_max_segs;
 if (new_tso >= (PACE_MAX_IP_BYTES-maxseg))
  new_tso = PACE_MAX_IP_BYTES - maxseg;

 if (new_tso != bbr->r_ctl.rc_pace_max_segs) {
  bbr_log_type_tsosize(bbr, cts, new_tso, 0, bbr->r_ctl.rc_pace_max_segs, maxseg, 0);
  bbr->r_ctl.rc_pace_max_segs = new_tso;
 }
}
