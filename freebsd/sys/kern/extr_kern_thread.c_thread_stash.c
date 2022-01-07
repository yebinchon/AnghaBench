
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_proc; } ;
struct TYPE_2__ {int p_exitthreads; } ;


 int atomic_subtract_rel_int (int *,int) ;
 int thread_zombie (struct thread*) ;

void
thread_stash(struct thread *td)
{
 atomic_subtract_rel_int(&td->td_proc->p_exitthreads, 1);
 thread_zombie(td);
}
