
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int peers_rwnd; } ;
struct sctp_tcb {TYPE_1__ asoc; } ;
struct sctp_nets {int mtu; int ssthresh; int cwnd; } ;


 int SCTP_BASE_SYSCTL (int ) ;
 int SCTP_CWND_INITIALIZATION ;
 int SCTP_CWND_LOGGING_ENABLE ;
 int SCTP_CWND_MONITOR_ENABLE ;
 int SCTP_INITIAL_CWND ;
 int htcp_init (struct sctp_nets*) ;
 int max (int,int ) ;
 int min (int,int ) ;
 int sctp_enforce_cwnd_limit (TYPE_1__*,struct sctp_nets*) ;
 int sctp_log_cwnd (struct sctp_tcb*,struct sctp_nets*,int ,int ) ;
 int sctp_logging_level ;

__attribute__((used)) static void
sctp_htcp_set_initial_cc_param(struct sctp_tcb *stcb, struct sctp_nets *net)
{




 net->cwnd = min((net->mtu * 4), max((2 * net->mtu), SCTP_INITIAL_CWND));
 net->ssthresh = stcb->asoc.peers_rwnd;
 sctp_enforce_cwnd_limit(&stcb->asoc, net);
 htcp_init(net);

 if (SCTP_BASE_SYSCTL(sctp_logging_level) & (SCTP_CWND_MONITOR_ENABLE | SCTP_CWND_LOGGING_ENABLE)) {
  sctp_log_cwnd(stcb, net, 0, SCTP_CWND_INITIALIZATION);
 }
}
