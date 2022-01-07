
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_8__ {int rc_pace_min_segs; int rc_pace_max_segs; int rc_bbr_hptsi_gain; int bbr_cross_over; int bbr_hptsi_segments_max; int bbr_hptsi_per_second; int bbr_hptsi_segments_floor; int bbr_utter_max; int bbr_hptsi_segments_delay_tar; } ;
struct tcp_bbr {scalar_t__ rc_last_options; scalar_t__ rc_past_init_win; scalar_t__ rc_use_google; TYPE_3__ r_ctl; TYPE_2__* rc_inp; scalar_t__ rc_no_pacing; TYPE_5__* rc_tp; scalar_t__ bbr_init_win_cheat; } ;
struct TYPE_10__ {scalar_t__ t_maxseg; int t_flags; int snd_wnd; } ;
struct TYPE_6__ {int sb_flags; } ;
struct TYPE_9__ {TYPE_1__ so_snd; } ;
struct TYPE_7__ {TYPE_4__* inp_socket; } ;


 int BBR_MIN_SEG ;
 int BBR_UNIT ;
 int FIVETWELVE_MBPS ;
 scalar_t__ IN_RECOVERY (int ) ;
 int ONE_POINT_TWO_MEG ;
 int PACE_MAX_IP_BYTES ;
 int SB_TLS_IFNET ;
 int bbr_adjust_for_hw_pacing (struct tcp_bbr*,int) ;
 scalar_t__ bbr_all_get_min ;
 int bbr_get_bw (struct tcp_bbr*) ;
 int bbr_get_pacing_length (struct tcp_bbr*,int,int ,int) ;
 int bbr_initial_cwnd (struct tcp_bbr*,TYPE_5__*) ;
 int bbr_log_type_tsosize (struct tcp_bbr*,int,int,int,int,int,int ) ;
 int bbr_minseg (struct tcp_bbr*) ;
 int ctf_get_opt_tls_size (TYPE_4__*,int ) ;
 int rounddown (int,int) ;
 int roundup (int,int) ;

__attribute__((used)) static void
tcp_bbr_tso_size_check(struct tcp_bbr *bbr, uint32_t cts)
{
 uint64_t bw;
 uint32_t old_tso = 0, new_tso;
 uint32_t maxseg, bytes;
 uint32_t tls_seg=0;
 if (bbr->rc_tp->t_maxseg > bbr->rc_last_options) {
  maxseg = bbr->rc_tp->t_maxseg - bbr->rc_last_options;
 } else {
  maxseg = BBR_MIN_SEG - bbr->rc_last_options;
 }






 old_tso = bbr->r_ctl.rc_pace_max_segs;
 if (bbr->rc_past_init_win == 0) {






  if (bbr->rc_use_google)
   bbr->r_ctl.rc_pace_max_segs = ((bbr->rc_tp->t_maxseg - bbr->rc_last_options) * 2);
  else if (bbr->bbr_init_win_cheat)
   bbr->r_ctl.rc_pace_max_segs = bbr_initial_cwnd(bbr, bbr->rc_tp);
  else
   bbr->r_ctl.rc_pace_max_segs = bbr->rc_tp->t_maxseg - bbr->rc_last_options;
  if (bbr->r_ctl.rc_pace_min_segs != bbr->rc_tp->t_maxseg)
   bbr->r_ctl.rc_pace_min_segs = bbr->rc_tp->t_maxseg;
  if (bbr->r_ctl.rc_pace_max_segs == 0) {
   bbr->r_ctl.rc_pace_max_segs = maxseg;
  }
  bbr_log_type_tsosize(bbr, cts, bbr->r_ctl.rc_pace_max_segs, tls_seg, old_tso, maxseg, 0);



   bbr_adjust_for_hw_pacing(bbr, cts);
  return;
 }





 bw = bbr_get_bw(bbr);
 if (IN_RECOVERY(bbr->rc_tp->t_flags) &&
      (bbr->rc_use_google == 0)) {

  new_tso = maxseg;
 } else if (bbr->rc_use_google) {
  int min_tso_segs;


  if (bbr->r_ctl.rc_bbr_hptsi_gain != BBR_UNIT) {
   bw *= bbr->r_ctl.rc_bbr_hptsi_gain;
   bw /= BBR_UNIT;
  }
  bytes = bw / 1024;
  if (bytes > (64 * 1024))
   bytes = 64 * 1024;
  new_tso = bytes / maxseg;
  if (bw < ONE_POINT_TWO_MEG)
   min_tso_segs = 1;
  else
   min_tso_segs = 2;
  if (new_tso < min_tso_segs)
   new_tso = min_tso_segs;
  new_tso *= maxseg;
 } else if (bbr->rc_no_pacing) {
  new_tso = (PACE_MAX_IP_BYTES / maxseg) * maxseg;
 } else if (bw <= bbr->r_ctl.bbr_cross_over) {




  uint32_t tso_len, min_tso;

  tso_len = bbr_get_pacing_length(bbr, BBR_UNIT, bbr->r_ctl.bbr_hptsi_segments_delay_tar, bw);
  if (tso_len > maxseg) {
   new_tso = tso_len / maxseg;
   if (new_tso > bbr->r_ctl.bbr_hptsi_segments_max)
    new_tso = bbr->r_ctl.bbr_hptsi_segments_max;
   new_tso *= maxseg;
  } else {




   min_tso = bbr_minseg(bbr);
   if ((tso_len > min_tso) && (bbr_all_get_min == 0))
    new_tso = rounddown(tso_len, min_tso);
   else
    new_tso = min_tso;
  }
 } else if (bw > FIVETWELVE_MBPS) {




  new_tso = rounddown(PACE_MAX_IP_BYTES, maxseg);
 } else {
  bw /= bbr->r_ctl.bbr_hptsi_per_second;
  new_tso = roundup(bw, (uint64_t)maxseg);





  if (new_tso < (bbr->r_ctl.bbr_hptsi_segments_max * maxseg))
   new_tso = (bbr->r_ctl.bbr_hptsi_segments_max * maxseg);
 }
 if (bbr->r_ctl.bbr_hptsi_segments_floor && (new_tso < (maxseg * bbr->r_ctl.bbr_hptsi_segments_floor)))
  new_tso = maxseg * bbr->r_ctl.bbr_hptsi_segments_floor;
 if (new_tso > PACE_MAX_IP_BYTES)
  new_tso = rounddown(PACE_MAX_IP_BYTES, maxseg);




  if (bbr->r_ctl.bbr_utter_max && (new_tso > (bbr->r_ctl.bbr_utter_max * maxseg))) {
   new_tso = bbr->r_ctl.bbr_utter_max * maxseg;
  }
 if (old_tso != new_tso) {

  bbr_log_type_tsosize(bbr, cts, new_tso, tls_seg, old_tso, maxseg, 0);
  bbr->r_ctl.rc_pace_max_segs = new_tso;
 }







  bbr_adjust_for_hw_pacing(bbr, cts);
}
