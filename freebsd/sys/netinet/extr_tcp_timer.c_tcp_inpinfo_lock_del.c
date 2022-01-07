
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int dummy; } ;
struct inpcb {int dummy; } ;


 int INP_WUNLOCK (struct inpcb*) ;

void
tcp_inpinfo_lock_del(struct inpcb *inp, struct tcpcb *tp)
{
 if (inp && tp != ((void*)0))
  INP_WUNLOCK(inp);
}
