
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int * t_stats; int t_inpcb; } ;


 int INP_WLOCK_ASSERT (int ) ;
 int V_tcp_perconn_stats_enable ;
 int strlen (char*) ;
 int tcp_stats_sample_rollthedice (struct tcpcb*,char*,int ) ;

__attribute__((used)) static void
tcp_log_grow_tlb(char *tlb_id, struct tcpcb *tp)
{

 INP_WLOCK_ASSERT(tp->t_inpcb);





}
