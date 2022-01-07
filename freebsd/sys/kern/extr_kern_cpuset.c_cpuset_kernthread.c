
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct cpuset* td_cpuset; } ;
struct cpuset {int dummy; } ;


 int cpuset_kernel ;
 struct cpuset* cpuset_ref (int ) ;
 int cpuset_rel (struct cpuset*) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

void
cpuset_kernthread(struct thread *td)
{
 struct cpuset *set;

 thread_lock(td);
 set = td->td_cpuset;
 td->td_cpuset = cpuset_ref(cpuset_kernel);
 thread_unlock(td);
 cpuset_rel(set);
}
