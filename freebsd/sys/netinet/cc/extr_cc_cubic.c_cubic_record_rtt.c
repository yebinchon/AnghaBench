
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cubic {int min_rtt_ticks; int mean_rtt_ticks; int sum_rtt_ticks; int epoch_ack_count; } ;
struct cc_var {struct cubic* cc_data; } ;


 int CCV (struct cc_var*,int ) ;
 int CUBIC_MIN_RTT_SAMPLES ;
 int TCPTV_SRTTBASE ;
 int TCP_RTT_SCALE ;
 int max (int,int) ;
 int t_rttupdated ;
 int t_srtt ;

__attribute__((used)) static void
cubic_record_rtt(struct cc_var *ccv)
{
 struct cubic *cubic_data;
 int t_srtt_ticks;


 if (CCV(ccv, t_rttupdated) >= CUBIC_MIN_RTT_SAMPLES) {
  cubic_data = ccv->cc_data;
  t_srtt_ticks = CCV(ccv, t_srtt) / TCP_RTT_SCALE;
  if ((t_srtt_ticks < cubic_data->min_rtt_ticks ||
      cubic_data->min_rtt_ticks == TCPTV_SRTTBASE)) {
   cubic_data->min_rtt_ticks = max(1, t_srtt_ticks);







   if (cubic_data->min_rtt_ticks >
       cubic_data->mean_rtt_ticks)
    cubic_data->mean_rtt_ticks =
        cubic_data->min_rtt_ticks;
  }


  cubic_data->sum_rtt_ticks += t_srtt_ticks;
  cubic_data->epoch_ack_count++;
 }
}
