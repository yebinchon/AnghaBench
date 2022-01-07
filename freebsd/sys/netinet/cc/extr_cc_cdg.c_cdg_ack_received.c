
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct ertt {int flags; int rtt; } ;
struct cdg {scalar_t__ sample_q_size; long max_qtrend; long min_qtrend; scalar_t__ consec_cong_cnt; scalar_t__ shadow_w; scalar_t__ maxrtt_in_prevrtt; scalar_t__ maxrtt_in_rtt; scalar_t__ minrtt_in_rtt; scalar_t__ minrtt_in_prevrtt; int queue_state; } ;
struct cc_var {struct cdg* cc_data; } ;


 scalar_t__ CCV (struct cc_var*,int ) ;
 scalar_t__ CC_ACK ;
 int CC_CDG_DELAY ;
 int CDG_Q_EMPTY ;
 int CDG_Q_FALLING ;
 int CDG_Q_FULL ;
 int CDG_Q_RISING ;
 long D_P_E ;
 int ERTT_NEW_MEASUREMENT ;
 scalar_t__ INT_MAX ;
 int IN_RECOVERY (scalar_t__) ;
 scalar_t__ V_cdg_consec_cong ;
 scalar_t__ V_cdg_hold_backoff ;
 int calc_moving_average (struct cdg*,long,long) ;
 int cdg_cong_signal (struct cc_var*,int ) ;
 int cdg_window_increase (struct cc_var*,int) ;
 int ertt_id ;
 scalar_t__ imax (int ,scalar_t__) ;
 scalar_t__ imin (int ,scalar_t__) ;
 scalar_t__ khelp_get_osd (scalar_t__,int ) ;
 int osd ;
 int prob_backoff (long) ;
 int snd_cwnd ;
 int snd_ssthresh ;
 int t_flags ;
 scalar_t__ ulmax (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
cdg_ack_received(struct cc_var *ccv, uint16_t ack_type)
{
 struct cdg *cdg_data;
 struct ertt *e_t;
 long qdiff_max, qdiff_min;
 int congestion, new_measurement, slowstart;

 cdg_data = ccv->cc_data;
 e_t = (struct ertt *)khelp_get_osd(CCV(ccv, osd), ertt_id);
 new_measurement = e_t->flags & ERTT_NEW_MEASUREMENT;
 congestion = 0;
 cdg_data->maxrtt_in_rtt = imax(e_t->rtt, cdg_data->maxrtt_in_rtt);
 cdg_data->minrtt_in_rtt = imin(e_t->rtt, cdg_data->minrtt_in_rtt);

 if (new_measurement) {
  slowstart = (CCV(ccv, snd_cwnd) <= CCV(ccv, snd_ssthresh));






  if (cdg_data->maxrtt_in_prevrtt) {
   qdiff_max = ((long)(cdg_data->maxrtt_in_rtt -
       cdg_data->maxrtt_in_prevrtt) << D_P_E );
   qdiff_min = ((long)(cdg_data->minrtt_in_rtt -
       cdg_data->minrtt_in_prevrtt) << D_P_E );

   if (cdg_data->sample_q_size == 0) {
    cdg_data->max_qtrend = qdiff_max;
    cdg_data->min_qtrend = qdiff_min;
   } else
    calc_moving_average(cdg_data, qdiff_max, qdiff_min);


   if (slowstart && qdiff_min > 0)
    congestion = prob_backoff(qdiff_min);
   else if (cdg_data->min_qtrend > 0)
    congestion = prob_backoff(cdg_data->min_qtrend);
   else if (slowstart && qdiff_max > 0)
    congestion = prob_backoff(qdiff_max);
   else if (cdg_data->max_qtrend > 0)
    congestion = prob_backoff(cdg_data->max_qtrend);


   if (cdg_data->min_qtrend > 0 &&
       cdg_data->max_qtrend <= 0) {
    cdg_data->queue_state = CDG_Q_FULL;
   } else if (cdg_data->min_qtrend >= 0 &&
       cdg_data->max_qtrend < 0) {
    cdg_data->queue_state = CDG_Q_EMPTY;
    cdg_data->shadow_w = 0;
   } else if (cdg_data->min_qtrend > 0 &&
       cdg_data->max_qtrend > 0) {
    cdg_data->queue_state = CDG_Q_RISING;
   } else if (cdg_data->min_qtrend < 0 &&
       cdg_data->max_qtrend < 0) {
    cdg_data->queue_state = CDG_Q_FALLING;
   }

   if (cdg_data->min_qtrend < 0 ||
       cdg_data->max_qtrend < 0)
    cdg_data->consec_cong_cnt = 0;
  }

  cdg_data->minrtt_in_prevrtt = cdg_data->minrtt_in_rtt;
  cdg_data->minrtt_in_rtt = INT_MAX;
  cdg_data->maxrtt_in_prevrtt = cdg_data->maxrtt_in_rtt;
  cdg_data->maxrtt_in_rtt = 0;
  e_t->flags &= ~ERTT_NEW_MEASUREMENT;
 }

 if (congestion) {
  cdg_data->consec_cong_cnt++;
  if (!IN_RECOVERY(CCV(ccv, t_flags))) {
   if (cdg_data->consec_cong_cnt <= V_cdg_consec_cong)
    cdg_cong_signal(ccv, CC_CDG_DELAY);
   else






    if (cdg_data->consec_cong_cnt >=
        V_cdg_consec_cong + V_cdg_hold_backoff)
     cdg_data->consec_cong_cnt = 0;


   cdg_data->maxrtt_in_prevrtt = 0;




   cdg_data->shadow_w = ulmax(CCV(ccv, snd_cwnd),
       cdg_data->shadow_w);
  }
 } else if (ack_type == CC_ACK)
  cdg_window_increase(ccv, new_measurement);
}
