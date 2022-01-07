
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct thread {TYPE_1__* td_frame; } ;
struct TYPE_7__ {int mc_onstack; } ;
typedef TYPE_2__ mcontext_t ;
struct TYPE_8__ {int td_proc; } ;
struct TYPE_6__ {int * fixreg; } ;


 int PROC_LOCK (int ) ;
 int PROC_UNLOCK (int ) ;
 TYPE_5__* curthread ;
 int grab_mcontext (struct thread*,TYPE_2__*,int) ;
 int sigonstack (int ) ;

int
get_mcontext(struct thread *td, mcontext_t *mcp, int flags)
{
 int error;

 error = grab_mcontext(td, mcp, flags);
 if (error == 0) {
  PROC_LOCK(curthread->td_proc);
  mcp->mc_onstack = sigonstack(td->td_frame->fixreg[1]);
  PROC_UNLOCK(curthread->td_proc);
 }

 return (error);
}
