
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcb {int dummy; } ;


 int INP_WLOCK (struct inpcb*) ;

void
inp_wlock(struct inpcb *inp)
{

 INP_WLOCK(inp);
}
