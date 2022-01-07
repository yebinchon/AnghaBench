
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct timespec {int dummy; } ;
struct rusage {int dummy; } ;
struct TYPE_3__ {int rux_runtime; } ;
struct proc {TYPE_1__ p_rux; } ;
struct TYPE_4__ {struct proc* td_proc; } ;


 scalar_t__ PCPU_GET (int ) ;
 int PROC_STATLOCK (struct proc*) ;
 int PROC_STATUNLOCK (struct proc*) ;
 scalar_t__ cpu_ticks () ;
 int cputick2timespec (int ,struct timespec*) ;
 TYPE_2__* curthread ;
 int rufetch (struct proc*,struct rusage*) ;
 int switchtime ;

__attribute__((used)) static void
get_process_cputime(struct proc *targetp, struct timespec *ats)
{
 uint64_t runtime;
 struct rusage ru;

 PROC_STATLOCK(targetp);
 rufetch(targetp, &ru);
 runtime = targetp->p_rux.rux_runtime;
 if (curthread->td_proc == targetp)
  runtime += cpu_ticks() - PCPU_GET(switchtime);
 PROC_STATUNLOCK(targetp);
 cputick2timespec(runtime, ats);
}
