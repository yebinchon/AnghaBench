
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct tcpcb {scalar_t__ t_state; int snd_cwnd; scalar_t__ t_maxseg; int ccv; int t_inpcb; } ;
struct TYPE_2__ {int (* after_idle ) (int ) ;} ;


 TYPE_1__* CC_ALGO (struct tcpcb*) ;
 int INP_WLOCK_ASSERT (int ) ;
 int TCPSTAT_INC (int ) ;
 scalar_t__ TCPS_ESTABLISHED ;
 int stub1 (int ) ;
 scalar_t__ tcp_compute_initwnd (int ) ;
 int tcp_maxseg (struct tcpcb*) ;
 int tcps_idle_estrestarts ;
 int tcps_idle_restarts ;

__attribute__((used)) static inline void
rack_cc_after_idle(struct tcpcb *tp)
{
 uint32_t i_cwnd;

 INP_WLOCK_ASSERT(tp->t_inpcb);






 if (CC_ALGO(tp)->after_idle != ((void*)0))
  CC_ALGO(tp)->after_idle(tp->ccv);

 if (tp->snd_cwnd == 1)
  i_cwnd = tp->t_maxseg;
 else
  i_cwnd = tcp_compute_initwnd(tcp_maxseg(tp));






 if (tp->snd_cwnd < i_cwnd) {
  tp->snd_cwnd = i_cwnd;
 }
}
