
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_tcb {int asoc; } ;
struct sctp_nets {int cwnd; scalar_t__ net_ack; scalar_t__ mtu; int last_hs_used; } ;
typedef int int32_t ;
struct TYPE_2__ {int cwnd; scalar_t__ increase; } ;


 int SCTP_BASE_SYSCTL (int ) ;
 int SCTP_CWND_LOG_FROM_SS ;
 int SCTP_CWND_MONITOR_ENABLE ;
 int SCTP_HS_TABLE_SIZE ;
 TYPE_1__* sctp_cwnd_adjust ;
 int sctp_enforce_cwnd_limit (int *,struct sctp_nets*) ;
 int sctp_log_cwnd (struct sctp_tcb*,struct sctp_nets*,int,int ) ;
 int sctp_logging_level ;

__attribute__((used)) static void
sctp_hs_cwnd_increase(struct sctp_tcb *stcb, struct sctp_nets *net)
{
 int cur_val, i, indx, incr;
 int old_cwnd = net->cwnd;

 cur_val = net->cwnd >> 10;
 indx = SCTP_HS_TABLE_SIZE - 1;

 if (cur_val < sctp_cwnd_adjust[0].cwnd) {

  if (net->net_ack > net->mtu) {
   net->cwnd += net->mtu;
  } else {
   net->cwnd += net->net_ack;
  }
 } else {
  for (i = net->last_hs_used; i < SCTP_HS_TABLE_SIZE; i++) {
   if (cur_val < sctp_cwnd_adjust[i].cwnd) {
    indx = i;
    break;
   }
  }
  net->last_hs_used = indx;
  incr = (((int32_t)sctp_cwnd_adjust[indx].increase) << 10);
  net->cwnd += incr;
 }
 sctp_enforce_cwnd_limit(&stcb->asoc, net);
 if (SCTP_BASE_SYSCTL(sctp_logging_level) & SCTP_CWND_MONITOR_ENABLE) {
  sctp_log_cwnd(stcb, net, (net->cwnd - old_cwnd), SCTP_CWND_LOG_FROM_SS);
 }
}
