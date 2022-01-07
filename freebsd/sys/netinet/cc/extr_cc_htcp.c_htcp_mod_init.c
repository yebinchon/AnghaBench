
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int after_idle; } ;
struct TYPE_3__ {int after_idle; } ;


 int HTCP_RTT_REF ;
 int TCP_RTT_SCALE ;
 TYPE_2__ htcp_cc_algo ;
 int htcp_rtt_ref ;
 int hz ;
 TYPE_1__ newreno_cc_algo ;

__attribute__((used)) static int
htcp_mod_init(void)
{

 htcp_cc_algo.after_idle = newreno_cc_algo.after_idle;






 htcp_rtt_ref = (HTCP_RTT_REF * TCP_RTT_SCALE * hz) / 1000;

 return (0);
}
