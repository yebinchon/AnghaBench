
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htcp {scalar_t__ minrtt; scalar_t__ maxrtt; } ;
struct cc_var {struct htcp* cc_data; } ;


 scalar_t__ CCV (struct cc_var*,int ) ;
 scalar_t__ HTCP_MIN_RTT_SAMPLES ;
 scalar_t__ TCPTV_SRTTBASE ;
 int t_rttupdated ;
 int t_srtt ;

__attribute__((used)) static void
htcp_record_rtt(struct cc_var *ccv)
{
 struct htcp *htcp_data;

 htcp_data = ccv->cc_data;
 if ((CCV(ccv, t_srtt) < htcp_data->minrtt ||
     htcp_data->minrtt == TCPTV_SRTTBASE) &&
     (CCV(ccv, t_rttupdated) >= HTCP_MIN_RTT_SAMPLES))
  htcp_data->minrtt = CCV(ccv, t_srtt);





 if (CCV(ccv, t_srtt) > htcp_data->maxrtt
     && CCV(ccv, t_rttupdated) >= HTCP_MIN_RTT_SAMPLES)
  htcp_data->maxrtt = CCV(ccv, t_srtt);
}
