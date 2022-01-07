
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umtx_q {scalar_t__ uq_flags; int uq_pi_contested; int * uq_pi_blocked; struct thread* uq_thread; int uq_inherited_pri; } ;
struct thread {struct umtx_q* td_umtxq; } ;


 int KASSERT (int,char*) ;
 int PRI_MAX ;
 int TAILQ_EMPTY (int *) ;

void
umtx_thread_alloc(struct thread *td)
{
 struct umtx_q *uq;

 uq = td->td_umtxq;
 uq->uq_inherited_pri = PRI_MAX;

 KASSERT(uq->uq_flags == 0, ("uq_flags != 0"));
 KASSERT(uq->uq_thread == td, ("uq_thread != td"));
 KASSERT(uq->uq_pi_blocked == ((void*)0), ("uq_pi_blocked != NULL"));
 KASSERT(TAILQ_EMPTY(&uq->uq_pi_contested), ("uq_pi_contested is not empty"));
}
