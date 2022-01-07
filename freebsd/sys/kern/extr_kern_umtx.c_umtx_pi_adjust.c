
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct umtx_q {struct umtx_pi* uq_pi_blocked; } ;
struct umtx_pi {int dummy; } ;
struct thread {struct umtx_q* td_umtxq; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int umtx_lock ;
 int umtx_pi_adjust_thread (struct umtx_pi*,struct thread*) ;
 int umtx_repropagate_priority (struct umtx_pi*) ;

void
umtx_pi_adjust(struct thread *td, u_char oldpri)
{
 struct umtx_q *uq;
 struct umtx_pi *pi;

 uq = td->td_umtxq;
 mtx_lock(&umtx_lock);



 pi = uq->uq_pi_blocked;
 if (pi != ((void*)0)) {
  umtx_pi_adjust_thread(pi, td);
  umtx_repropagate_priority(pi);
 }
 mtx_unlock(&umtx_lock);
}
