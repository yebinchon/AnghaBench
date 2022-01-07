
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int t_srtt; int t_rttvar; size_t t_rxtshift; int t_flags; } ;


 int TCPT_RANGESET (int,int,int ,int ) ;
 size_t TCP_MAXRXTSHIFT ;
 int TF_PREVVALID ;
 int TT_PERSIST ;
 int TT_REXMT ;
 int panic (char*) ;
 int* tcp_backoff ;
 int tcp_persmax ;
 int tcp_persmin ;
 int tcp_timer_activate (struct tcpcb*,int ,int) ;
 scalar_t__ tcp_timer_active (struct tcpcb*,int ) ;

void
tcp_setpersist(struct tcpcb *tp)
{
 int t = ((tp->t_srtt >> 2) + tp->t_rttvar) >> 1;
 int tt;

 tp->t_flags &= ~TF_PREVVALID;
 if (tcp_timer_active(tp, TT_REXMT))
  panic("tcp_setpersist: retransmit pending");



 TCPT_RANGESET(tt, t * tcp_backoff[tp->t_rxtshift],
        tcp_persmin, tcp_persmax);
 tcp_timer_activate(tp, TT_PERSIST, tt);
 if (tp->t_rxtshift < TCP_MAXRXTSHIFT)
  tp->t_rxtshift++;
}
