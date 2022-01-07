
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct thread {int dummy; } ;


 int sched_prio (struct thread*,int ) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

__attribute__((used)) static void
epoch_adjust_prio(struct thread *td, u_char prio)
{

 thread_lock(td);
 sched_prio(td, prio);
 thread_unlock(td);
}
