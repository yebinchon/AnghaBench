
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int last_cong; int bytes_acked; int beta; int alpha; } ;
struct TYPE_3__ {TYPE_2__ htcp_ca; } ;
struct sctp_nets {TYPE_1__ cc_mod; int mtu; } ;
struct htcp {int dummy; } ;


 int ALPHA_BASE ;
 int BETA_MIN ;
 int memset (TYPE_2__*,int ,int) ;
 int sctp_get_tick_count () ;

__attribute__((used)) static void
htcp_init(struct sctp_nets *net)
{
 memset(&net->cc_mod.htcp_ca, 0, sizeof(struct htcp));
 net->cc_mod.htcp_ca.alpha = ALPHA_BASE;
 net->cc_mod.htcp_ca.beta = BETA_MIN;
 net->cc_mod.htcp_ca.bytes_acked = net->mtu;
 net->cc_mod.htcp_ca.last_cong = sctp_get_tick_count();
}
