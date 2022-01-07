
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umtx_q {scalar_t__ uq_inherited_pri; int uq_pi_contested; } ;
struct umtx_pi {int * pi_owner; } ;
struct thread {uintptr_t td_rb_inact; scalar_t__ td_rb_list; scalar_t__ td_rbp_list; struct umtx_q* td_umtxq; } ;


 scalar_t__ PRI_MAX ;
 int TAILQ_EMPTY (int *) ;
 struct umtx_pi* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct umtx_pi*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pi_link ;
 int sched_lend_user_prio_cond (struct thread*,scalar_t__) ;
 int umtx_cleanup_rb_list (struct thread*,scalar_t__,uintptr_t*,char*) ;
 int umtx_handle_rb (struct thread*,uintptr_t,int *,int) ;
 int umtx_lock ;
 int umtx_read_uptr (struct thread*,uintptr_t,uintptr_t*) ;

__attribute__((used)) static void
umtx_thread_cleanup(struct thread *td)
{
 struct umtx_q *uq;
 struct umtx_pi *pi;
 uintptr_t rb_inact;




 uq = td->td_umtxq;
 if (uq != ((void*)0)) {
  if (uq->uq_inherited_pri != PRI_MAX ||
      !TAILQ_EMPTY(&uq->uq_pi_contested)) {
   mtx_lock(&umtx_lock);
   uq->uq_inherited_pri = PRI_MAX;
   while ((pi = TAILQ_FIRST(&uq->uq_pi_contested)) != ((void*)0)) {
    pi->pi_owner = ((void*)0);
    TAILQ_REMOVE(&uq->uq_pi_contested, pi, pi_link);
   }
   mtx_unlock(&umtx_lock);
  }
  sched_lend_user_prio_cond(td, PRI_MAX);
 }

 if (td->td_rb_inact == 0 && td->td_rb_list == 0 && td->td_rbp_list == 0)
  return;






 rb_inact = td->td_rb_inact;
 if (rb_inact != 0)
  (void)umtx_read_uptr(td, rb_inact, &rb_inact);
 umtx_cleanup_rb_list(td, td->td_rb_list, &rb_inact, "");
 umtx_cleanup_rb_list(td, td->td_rbp_list, &rb_inact, "priv ");
 if (rb_inact != 0)
  (void)umtx_handle_rb(td, rb_inact, ((void*)0), 1);
}
