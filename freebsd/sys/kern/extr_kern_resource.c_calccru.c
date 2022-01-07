
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct proc {int p_crux; } ;


 int MA_OWNED ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int calcru1 (struct proc*,int *,struct timeval*,struct timeval*) ;

void
calccru(struct proc *p, struct timeval *up, struct timeval *sp)
{

 PROC_LOCK_ASSERT(p, MA_OWNED);
 calcru1(p, &p->p_crux, up, sp);
}
