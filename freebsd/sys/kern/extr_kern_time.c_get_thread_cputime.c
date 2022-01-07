
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct timespec {int dummy; } ;
struct thread {scalar_t__ td_runtime; } ;
struct TYPE_2__ {scalar_t__ td_runtime; } ;


 scalar_t__ PCPU_GET (scalar_t__) ;
 scalar_t__ cpu_ticks () ;
 int cputick2timespec (scalar_t__,struct timespec*) ;
 int critical_enter () ;
 int critical_exit () ;
 TYPE_1__* curthread ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

__attribute__((used)) static void
get_thread_cputime(struct thread *targettd, struct timespec *ats)
{
 uint64_t runtime, curtime, switchtime;

 if (targettd == ((void*)0)) {
  critical_enter();
  switchtime = PCPU_GET(switchtime);
  curtime = cpu_ticks();
  runtime = curthread->td_runtime;
  critical_exit();
  runtime += curtime - switchtime;
 } else {
  thread_lock(targettd);
  runtime = targettd->td_runtime;
  thread_unlock(targettd);
 }
 cputick2timespec(runtime, ats);
}
