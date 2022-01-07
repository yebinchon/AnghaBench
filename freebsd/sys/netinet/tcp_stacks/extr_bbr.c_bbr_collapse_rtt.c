
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {scalar_t__ t_softerror; scalar_t__ t_rxtshift; } ;
struct tcp_bbr {int dummy; } ;
typedef int int32_t ;



__attribute__((used)) static void
bbr_collapse_rtt(struct tcpcb *tp, struct tcp_bbr *bbr, int32_t rtt)
{



 tp->t_rxtshift = 0;
 tp->t_softerror = 0;
}
