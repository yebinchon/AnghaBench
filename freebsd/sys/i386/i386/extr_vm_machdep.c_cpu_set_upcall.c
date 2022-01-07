
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct thread {TYPE_1__* td_frame; } ;
struct TYPE_5__ {int ss_size; scalar_t__ ss_sp; } ;
typedef TYPE_2__ stack_t ;
struct TYPE_4__ {int tf_esp; int tf_eip; scalar_t__ tf_ebp; } ;


 int cpu_thread_clean (struct thread*) ;
 int suword (void*,int) ;

void
cpu_set_upcall(struct thread *td, void (*entry)(void *), void *arg,
    stack_t *stack)
{
 cpu_thread_clean(td);





 td->td_frame->tf_ebp = 0;
 td->td_frame->tf_esp =
     (((int)stack->ss_sp + stack->ss_size - 4) & ~0x0f) - 4;
 td->td_frame->tf_eip = (int)entry;


 suword((void *)td->td_frame->tf_esp, 0);


 suword((void *)(td->td_frame->tf_esp + sizeof(void *)),
     (int)arg);
}
