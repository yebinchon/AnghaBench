
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_tcb {int asoc; } ;
struct sctp_nets {int cwnd; int ssthresh; int mtu; size_t last_hs_used; } ;
typedef int int32_t ;
struct TYPE_2__ {int cwnd; scalar_t__ drop_percent; } ;


 int SCTP_BASE_SYSCTL (int ) ;
 int SCTP_CWND_LOG_FROM_FR ;
 int SCTP_CWND_MONITOR_ENABLE ;
 TYPE_1__* sctp_cwnd_adjust ;
 int sctp_enforce_cwnd_limit (int *,struct sctp_nets*) ;
 int sctp_log_cwnd (struct sctp_tcb*,struct sctp_nets*,int,int ) ;
 int sctp_logging_level ;

__attribute__((used)) static void
sctp_hs_cwnd_decrease(struct sctp_tcb *stcb, struct sctp_nets *net)
{
 int cur_val, i, indx;
 int old_cwnd = net->cwnd;

 cur_val = net->cwnd >> 10;
 if (cur_val < sctp_cwnd_adjust[0].cwnd) {

  net->ssthresh = net->cwnd / 2;
  if (net->ssthresh < (net->mtu * 2)) {
   net->ssthresh = 2 * net->mtu;
  }
  net->cwnd = net->ssthresh;
 } else {

  net->ssthresh = net->cwnd - (int)((net->cwnd / 100) *
      (int32_t)sctp_cwnd_adjust[net->last_hs_used].drop_percent);
  net->cwnd = net->ssthresh;

  indx = net->last_hs_used;
  cur_val = net->cwnd >> 10;

  if (cur_val < sctp_cwnd_adjust[0].cwnd) {

   net->last_hs_used = 0;
  } else {
   for (i = indx; i >= 1; i--) {
    if (cur_val > sctp_cwnd_adjust[i - 1].cwnd) {
     break;
    }
   }
   net->last_hs_used = indx;
  }
 }
 sctp_enforce_cwnd_limit(&stcb->asoc, net);
 if (SCTP_BASE_SYSCTL(sctp_logging_level) & SCTP_CWND_MONITOR_ENABLE) {
  sctp_log_cwnd(stcb, net, (net->cwnd - old_cwnd), SCTP_CWND_LOG_FROM_FR);
 }
}
