
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sctp_tcb {int asoc; } ;
struct TYPE_4__ {int alpha; int bytes_acked; } ;
struct TYPE_3__ {TYPE_2__ htcp_ca; } ;
struct sctp_nets {scalar_t__ cwnd; scalar_t__ ssthresh; scalar_t__ flight_size; int net_ack; int mtu; int partial_bytes_acked; TYPE_1__ cc_mod; } ;


 int SCTP_BASE_SYSCTL (int ) ;
 int SCTP_CWND_LOGGING_ENABLE ;
 int SCTP_CWND_LOG_FROM_CA ;
 int SCTP_CWND_LOG_FROM_SS ;
 int SCTP_CWND_LOG_NOADV_CA ;
 int SCTP_CWND_LOG_NOADV_SS ;
 int SCTP_CWND_MONITOR_ENABLE ;
 int htcp_alpha_update (TYPE_2__*) ;
 int measure_rtt (struct sctp_nets*) ;
 int sctp_L2_abc_variable ;
 int sctp_enforce_cwnd_limit (int *,struct sctp_nets*) ;
 int sctp_log_cwnd (struct sctp_tcb*,struct sctp_nets*,int,int ) ;
 int sctp_logging_level ;

__attribute__((used)) static void
htcp_cong_avoid(struct sctp_tcb *stcb, struct sctp_nets *net)
{





 if (net->cwnd <= net->ssthresh) {

  if (net->flight_size + net->net_ack >= net->cwnd) {
   if (net->net_ack > (net->mtu * SCTP_BASE_SYSCTL(sctp_L2_abc_variable))) {
    net->cwnd += (net->mtu * SCTP_BASE_SYSCTL(sctp_L2_abc_variable));
    if (SCTP_BASE_SYSCTL(sctp_logging_level) & SCTP_CWND_MONITOR_ENABLE) {
     sctp_log_cwnd(stcb, net, net->mtu,
         SCTP_CWND_LOG_FROM_SS);
    }

   } else {
    net->cwnd += net->net_ack;
    if (SCTP_BASE_SYSCTL(sctp_logging_level) & SCTP_CWND_MONITOR_ENABLE) {
     sctp_log_cwnd(stcb, net, net->net_ack,
         SCTP_CWND_LOG_FROM_SS);
    }

   }
   sctp_enforce_cwnd_limit(&stcb->asoc, net);
  } else {
   if (SCTP_BASE_SYSCTL(sctp_logging_level) & SCTP_CWND_LOGGING_ENABLE) {
    sctp_log_cwnd(stcb, net, net->net_ack,
        SCTP_CWND_LOG_NOADV_SS);
   }
  }
 } else {
  measure_rtt(net);






  if (((net->partial_bytes_acked / net->mtu * net->cc_mod.htcp_ca.alpha) >> 7) * net->mtu >= net->cwnd) {




   net->cwnd += net->mtu;
   net->partial_bytes_acked = 0;
   sctp_enforce_cwnd_limit(&stcb->asoc, net);
   htcp_alpha_update(&net->cc_mod.htcp_ca);
   if (SCTP_BASE_SYSCTL(sctp_logging_level) & SCTP_CWND_MONITOR_ENABLE) {
    sctp_log_cwnd(stcb, net, net->mtu,
        SCTP_CWND_LOG_FROM_CA);
   }
  } else {
   net->partial_bytes_acked += net->net_ack;
   if (SCTP_BASE_SYSCTL(sctp_logging_level) & SCTP_CWND_LOGGING_ENABLE) {
    sctp_log_cwnd(stcb, net, net->net_ack,
        SCTP_CWND_LOG_NOADV_CA);
   }
  }

  net->cc_mod.htcp_ca.bytes_acked = net->mtu;
 }
}
