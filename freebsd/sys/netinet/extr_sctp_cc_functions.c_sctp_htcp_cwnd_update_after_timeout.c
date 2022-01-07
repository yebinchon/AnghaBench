
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_tcb {int dummy; } ;
struct TYPE_2__ {int htcp_ca; } ;
struct sctp_nets {int cwnd; int mtu; scalar_t__ partial_bytes_acked; int ssthresh; TYPE_1__ cc_mod; } ;


 int SCTP_BASE_SYSCTL (int ) ;
 int SCTP_CWND_LOG_FROM_RTX ;
 int SCTP_CWND_MONITOR_ENABLE ;
 int htcp_recalc_ssthresh (struct sctp_nets*) ;
 int htcp_reset (int *) ;
 int sctp_log_cwnd (struct sctp_tcb*,struct sctp_nets*,int,int ) ;
 int sctp_logging_level ;

__attribute__((used)) static void
sctp_htcp_cwnd_update_after_timeout(struct sctp_tcb *stcb,
    struct sctp_nets *net)
{
 int old_cwnd = net->cwnd;


 htcp_reset(&net->cc_mod.htcp_ca);
 net->ssthresh = htcp_recalc_ssthresh(net);
 net->cwnd = net->mtu;
 net->partial_bytes_acked = 0;
 if (SCTP_BASE_SYSCTL(sctp_logging_level) & SCTP_CWND_MONITOR_ENABLE) {
  sctp_log_cwnd(stcb, net, net->cwnd - old_cwnd, SCTP_CWND_LOG_FROM_RTX);
 }
}
