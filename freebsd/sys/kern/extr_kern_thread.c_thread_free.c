
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {scalar_t__ td_kstack; int td_slpcallout; int * td_cpuset; } ;


 int callout_drain (int *) ;
 int cpu_thread_free (struct thread*) ;
 int cpuset_rel (int *) ;
 int lock_profile_thread_exit (struct thread*) ;
 int thread_zone ;
 int uma_zfree (int ,struct thread*) ;
 int vm_thread_dispose (struct thread*) ;

void
thread_free(struct thread *td)
{

 lock_profile_thread_exit(td);
 if (td->td_cpuset)
  cpuset_rel(td->td_cpuset);
 td->td_cpuset = ((void*)0);
 cpu_thread_free(td);
 if (td->td_kstack != 0)
  vm_thread_dispose(td);
 callout_drain(&td->td_slpcallout);
 uma_zfree(thread_zone, td);
}
