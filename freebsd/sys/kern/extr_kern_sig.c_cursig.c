
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {TYPE_2__* td_proc; } ;
struct TYPE_4__ {TYPE_1__* p_sigacts; } ;
struct TYPE_3__ {int ps_mtx; } ;


 int MA_NOTOWNED ;
 int MA_OWNED ;
 int PROC_LOCK_ASSERT (TYPE_2__*,int ) ;
 scalar_t__ SIGPENDING (struct thread*) ;
 int THREAD_LOCK_ASSERT (struct thread*,int ) ;
 int issignal (struct thread*) ;
 int mtx_assert (int *,int ) ;

int
cursig(struct thread *td)
{
 PROC_LOCK_ASSERT(td->td_proc, MA_OWNED);
 mtx_assert(&td->td_proc->p_sigacts->ps_mtx, MA_OWNED);
 THREAD_LOCK_ASSERT(td, MA_NOTOWNED);
 return (SIGPENDING(td) ? issignal(td) : 0);
}
