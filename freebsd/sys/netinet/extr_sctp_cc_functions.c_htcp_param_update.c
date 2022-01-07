
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ minRTT; scalar_t__ maxRTT; } ;
struct TYPE_4__ {TYPE_2__ htcp_ca; } ;
struct sctp_nets {TYPE_1__ cc_mod; } ;


 int htcp_alpha_update (TYPE_2__*) ;
 int htcp_beta_update (TYPE_2__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
htcp_param_update(struct sctp_nets *net)
{
 uint32_t minRTT = net->cc_mod.htcp_ca.minRTT;
 uint32_t maxRTT = net->cc_mod.htcp_ca.maxRTT;

 htcp_beta_update(&net->cc_mod.htcp_ca, minRTT, maxRTT);
 htcp_alpha_update(&net->cc_mod.htcp_ca);





 if (minRTT > 0 && maxRTT > minRTT)
  net->cc_mod.htcp_ca.maxRTT = minRTT + ((maxRTT - minRTT) * 95) / 100;
}
