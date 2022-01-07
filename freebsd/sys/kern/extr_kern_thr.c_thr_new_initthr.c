
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int td_tid; } ;
struct thr_param {int tls_base; int arg; int start_func; int stack_size; int stack_base; int * parent_tid; int * child_tid; } ;
struct TYPE_3__ {int ss_size; int ss_sp; } ;
typedef TYPE_1__ stack_t ;


 int EFAULT ;
 int cpu_set_upcall (struct thread*,int ,int ,TYPE_1__*) ;
 int cpu_set_user_tls (struct thread*,int ) ;
 scalar_t__ suword_lwpid (int *,int ) ;

__attribute__((used)) static int
thr_new_initthr(struct thread *td, void *thunk)
{
 stack_t stack;
 struct thr_param *param;
 param = thunk;
 if ((param->child_tid != ((void*)0) &&
     suword_lwpid(param->child_tid, td->td_tid)) ||
     (param->parent_tid != ((void*)0) &&
     suword_lwpid(param->parent_tid, td->td_tid)))
  return (EFAULT);


 stack.ss_sp = param->stack_base;
 stack.ss_size = param->stack_size;

 cpu_set_upcall(td, param->start_func, param->arg, &stack);

 return (cpu_set_user_tls(td, param->tls_base));
}
