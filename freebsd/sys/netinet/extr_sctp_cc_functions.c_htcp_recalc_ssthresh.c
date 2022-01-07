
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int beta; } ;
struct TYPE_4__ {TYPE_1__ htcp_ca; } ;
struct sctp_nets {int cwnd; int mtu; TYPE_2__ cc_mod; } ;


 int htcp_param_update (struct sctp_nets*) ;
 int max (int,unsigned int) ;

__attribute__((used)) static uint32_t
htcp_recalc_ssthresh(struct sctp_nets *net)
{
 htcp_param_update(net);
 return (max(((net->cwnd / net->mtu * net->cc_mod.htcp_ca.beta) >> 7) * net->mtu, 2U * net->mtu));
}
