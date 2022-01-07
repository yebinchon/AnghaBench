
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int t_inpcb; } ;


 int INP_WLOCK_ASSERT (int ) ;

__attribute__((used)) static void
tcp_default_fb_fini(struct tcpcb *tp, int tcb_is_purged)
{

 INP_WLOCK_ASSERT(tp->t_inpcb);
 return;
}
