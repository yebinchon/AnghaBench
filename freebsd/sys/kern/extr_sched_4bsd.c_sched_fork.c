
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;


 int sched_fork_thread (struct thread*,struct thread*) ;

void
sched_fork(struct thread *td, struct thread *childtd)
{
 sched_fork_thread(td, childtd);
}
