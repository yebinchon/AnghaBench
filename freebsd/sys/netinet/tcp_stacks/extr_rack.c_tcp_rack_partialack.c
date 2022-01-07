
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcphdr {int dummy; } ;
struct tcpcb {int t_inpcb; scalar_t__ t_fb_ptr; } ;
struct TYPE_2__ {scalar_t__ rc_prr_sndcnt; } ;
struct tcp_rack {int r_wanted_output; TYPE_1__ r_ctl; } ;


 int INP_WLOCK_ASSERT (int ) ;

__attribute__((used)) static void
tcp_rack_partialack(struct tcpcb *tp, struct tcphdr *th)
{
 struct tcp_rack *rack;

 rack = (struct tcp_rack *)tp->t_fb_ptr;
 INP_WLOCK_ASSERT(tp->t_inpcb);
 if (rack->r_ctl.rc_prr_sndcnt > 0)
  rack->r_wanted_output++;
}
