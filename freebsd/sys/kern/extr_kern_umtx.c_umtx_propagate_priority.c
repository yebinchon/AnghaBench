
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct umtx_q {struct umtx_pi* uq_pi_blocked; } ;
struct umtx_pi {struct thread* pi_owner; } ;
struct thread {int td_lend_user_pri; struct umtx_q* td_umtxq; TYPE_1__* td_proc; } ;
struct TYPE_2__ {scalar_t__ p_magic; } ;


 int MA_OWNED ;
 int MPASS (int) ;
 scalar_t__ P_MAGIC ;
 int UPRI (struct thread*) ;
 struct thread* curthread ;
 int mtx_assert (int *,int ) ;
 int sched_lend_user_prio (struct thread*,int) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;
 int umtx_lock ;
 int umtx_pi_adjust_thread (struct umtx_pi*,struct thread*) ;
 scalar_t__ umtx_pi_check_loop (struct umtx_pi*) ;

__attribute__((used)) static void
umtx_propagate_priority(struct thread *td)
{
 struct umtx_q *uq;
 struct umtx_pi *pi;
 int pri;

 mtx_assert(&umtx_lock, MA_OWNED);
 pri = UPRI(td);
 uq = td->td_umtxq;
 pi = uq->uq_pi_blocked;
 if (pi == ((void*)0))
  return;
 if (umtx_pi_check_loop(pi))
  return;

 for (;;) {
  td = pi->pi_owner;
  if (td == ((void*)0) || td == curthread)
   return;

  MPASS(td->td_proc != ((void*)0));
  MPASS(td->td_proc->p_magic == P_MAGIC);

  thread_lock(td);
  if (td->td_lend_user_pri > pri)
   sched_lend_user_prio(td, pri);
  else {
   thread_unlock(td);
   break;
  }
  thread_unlock(td);




  uq = td->td_umtxq;
  pi = uq->uq_pi_blocked;
  if (pi == ((void*)0))
   break;

  umtx_pi_adjust_thread(pi, td);
 }
}
