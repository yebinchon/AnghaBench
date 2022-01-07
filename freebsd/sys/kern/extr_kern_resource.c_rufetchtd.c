
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct rusage {int ru_stime; int ru_utime; } ;
struct thread {int td_rux; struct rusage td_ru; int td_incruntime; int td_runtime; struct proc* td_proc; } ;
struct proc {int dummy; } ;


 int MA_OWNED ;
 scalar_t__ PCPU_GET (int ) ;
 int PCPU_SET (int ,scalar_t__) ;
 int PROC_STATLOCK_ASSERT (struct proc*,int ) ;
 int THREAD_LOCK_ASSERT (struct thread*,int ) ;
 int calcru1 (struct proc*,int *,int *,int *) ;
 scalar_t__ cpu_ticks () ;
 struct thread* curthread ;
 int ruxagg (struct proc*,struct thread*) ;
 int switchtime ;

void
rufetchtd(struct thread *td, struct rusage *ru)
{
 struct proc *p;
 uint64_t runtime, u;

 p = td->td_proc;
 PROC_STATLOCK_ASSERT(p, MA_OWNED);
 THREAD_LOCK_ASSERT(td, MA_OWNED);






 if (td == curthread) {
  u = cpu_ticks();
  runtime = u - PCPU_GET(switchtime);
  td->td_runtime += runtime;
  td->td_incruntime += runtime;
  PCPU_SET(switchtime, u);
 }
 ruxagg(p, td);
 *ru = td->td_ru;
 calcru1(p, &td->td_rux, &ru->ru_utime, &ru->ru_stime);
}
