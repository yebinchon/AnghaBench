
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct tcpcb {TYPE_1__* t_lib; int t_inpcb; } ;
struct TYPE_2__ {int tlb_refcnt; } ;


 int INP_WLOCK_ASSERT (int ) ;

u_int
tcp_log_get_id_cnt(struct tcpcb *tp)
{

 INP_WLOCK_ASSERT(tp->t_inpcb);
 return ((tp->t_lib == ((void*)0)) ? 0 : tp->t_lib->tlb_refcnt);
}
