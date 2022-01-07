
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct thread {TYPE_1__* td_frame; int td_tid; } ;
struct TYPE_7__ {scalar_t__ ss_size; int ss_sp; } ;
typedef TYPE_2__ stack_t ;
struct TYPE_8__ {int argument; int entry_point; scalar_t__ stack_len; int stack; } ;
typedef TYPE_3__ cloudabi32_threadattr_t ;
typedef int args ;
struct TYPE_6__ {scalar_t__ tf_esp; } ;


 int TO_PTR (int ) ;
 int copyout (int *,void*,int) ;
 int cpu_set_upcall (struct thread*,int ,int *,TYPE_2__*) ;
 int cpu_set_user_tls (struct thread*,void*) ;

int
cloudabi32_thread_setregs(struct thread *td,
    const cloudabi32_threadattr_t *attr, uint32_t tcb)
{
 stack_t stack;
 uint32_t args[3];
 void *frameptr;
 int error;


 stack.ss_sp = TO_PTR(attr->stack);
 stack.ss_size = attr->stack_len - sizeof(args);
 cpu_set_upcall(td, TO_PTR(attr->entry_point), ((void*)0), &stack);






 args[0] = tcb;
 args[1] = td->td_tid;
 args[2] = attr->argument;
 frameptr = (void *)td->td_frame->tf_esp;
 error = copyout(args, frameptr, sizeof(args));
 if (error != 0)
  return (error);

 return (cpu_set_user_tls(td, frameptr));
}
