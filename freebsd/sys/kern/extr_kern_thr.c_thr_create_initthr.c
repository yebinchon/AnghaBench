
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int td_tid; } ;
struct TYPE_2__ {int uc_mcontext; } ;
struct thr_create_initthr_args {TYPE_1__ ctx; int * tid; } ;


 int EFAULT ;
 int set_mcontext (struct thread*,int *) ;
 scalar_t__ suword_lwpid (int *,int ) ;

__attribute__((used)) static int
thr_create_initthr(struct thread *td, void *thunk)
{
 struct thr_create_initthr_args *args;


 args = thunk;
 if (args->tid != ((void*)0) && suword_lwpid(args->tid, td->td_tid))
  return (EFAULT);

 return (set_mcontext(td, &args->ctx.uc_mcontext));
}
