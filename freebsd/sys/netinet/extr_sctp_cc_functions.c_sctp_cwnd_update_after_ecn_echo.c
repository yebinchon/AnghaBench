
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_tcb {int dummy; } ;
struct sctp_nets {int dummy; } ;


 int sctp_cwnd_update_after_ecn_echo_common (struct sctp_tcb*,struct sctp_nets*,int,int,int ) ;

__attribute__((used)) static void
sctp_cwnd_update_after_ecn_echo(struct sctp_tcb *stcb, struct sctp_nets *net,
    int in_window, int num_pkt_lost)
{

 sctp_cwnd_update_after_ecn_echo_common(stcb, net, in_window, num_pkt_lost, 0);
}
