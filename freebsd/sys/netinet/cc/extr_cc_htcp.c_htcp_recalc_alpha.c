
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htcp {int t_last_cong; int beta; int alpha; } ;
struct cc_var {struct htcp* cc_data; } ;


 int CCV (struct cc_var*,int ) ;
 int HTCP_CALC_ALPHA (int) ;
 int HTCP_DELTA_L ;
 int HTCP_MAXROWE ;
 int HTCP_MINROWE ;
 int HTCP_SHIFT ;
 scalar_t__ V_htcp_adaptive_backoff ;
 scalar_t__ V_htcp_rtt_scaling ;
 int htcp_max_diff ;
 int htcp_rtt_ref ;
 int max (int,int) ;
 int min (int,int ) ;
 int t_srtt ;
 int ticks ;

__attribute__((used)) static void
htcp_recalc_alpha(struct cc_var *ccv)
{
 struct htcp *htcp_data;
 int alpha, diff, now;

 htcp_data = ccv->cc_data;
 now = ticks;
 if (now < htcp_data->t_last_cong)
  htcp_data->t_last_cong = now - HTCP_DELTA_L;

 diff = now - htcp_data->t_last_cong - HTCP_DELTA_L;


 if (diff < htcp_max_diff) {




  if (diff > 0) {
   alpha = HTCP_CALC_ALPHA(diff);





   if (V_htcp_adaptive_backoff)
    alpha = max(1, (2 * ((1 << HTCP_SHIFT) -
        htcp_data->beta) * alpha) >> HTCP_SHIFT);







   if (V_htcp_rtt_scaling)
    alpha = max(1, (min(max(HTCP_MINROWE,
        (CCV(ccv, t_srtt) << HTCP_SHIFT) /
        htcp_rtt_ref), HTCP_MAXROWE) * alpha)
        >> HTCP_SHIFT);

  } else
   alpha = 1;

  htcp_data->alpha = alpha;
 }
}
