
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int dummy; } ;
struct inpcb {scalar_t__ inp_ppcb; } ;


 int INP_WLOCK_ASSERT (struct inpcb*) ;

struct tcpcb *
inp_inpcbtotcpcb(struct inpcb *inp)
{

 INP_WLOCK_ASSERT(inp);
 return ((struct tcpcb *)inp->inp_ppcb);
}
