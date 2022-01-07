
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct rusage {int dummy; } ;
struct proc {int dummy; } ;


 int PROC_STATLOCK (struct proc*) ;
 int PROC_STATUNLOCK (struct proc*) ;
 int calcru (struct proc*,struct timeval*,struct timeval*) ;
 int rufetch (struct proc*,struct rusage*) ;

void
rufetchcalc(struct proc *p, struct rusage *ru, struct timeval *up,
    struct timeval *sp)
{

 PROC_STATLOCK(p);
 rufetch(p, ru);
 calcru(p, up, sp);
 PROC_STATUNLOCK(p);
}
