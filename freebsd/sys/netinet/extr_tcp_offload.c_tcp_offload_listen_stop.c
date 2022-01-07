
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int t_inpcb; } ;


 int EVENTHANDLER_INVOKE (void (*) (struct tcpcb*),struct tcpcb*) ;
 int INP_WLOCK_ASSERT (int ) ;

void
tcp_offload_listen_stop(struct tcpcb *tp)
{

 INP_WLOCK_ASSERT(tp->t_inpcb);

 EVENTHANDLER_INVOKE(tcp_offload_listen_stop, tp);
}
