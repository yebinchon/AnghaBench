
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;


 int sched_is_bound (struct thread*) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

__attribute__((used)) static int
cpu_sched_is_bound(struct thread *td)
{
 int ret;

 thread_lock(td);
 ret = sched_is_bound(td);
 thread_unlock(td);
 return (ret);
}
