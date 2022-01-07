
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umtx_q {struct thread* uq_thread; } ;
struct umtx_pi {int pi_blocked; struct thread* pi_owner; } ;
struct thread {int dummy; } ;


 int EPERM ;
 struct umtx_q* TAILQ_FIRST (int *) ;
 int UPRI (struct thread*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sched_lend_user_prio (struct thread*,int) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;
 int umtx_lock ;
 int umtx_pi_setowner (struct umtx_pi*,struct thread*) ;

__attribute__((used)) static int
umtx_pi_claim(struct umtx_pi *pi, struct thread *owner)
{
 struct umtx_q *uq;
 int pri;

 mtx_lock(&umtx_lock);
 if (pi->pi_owner == owner) {
  mtx_unlock(&umtx_lock);
  return (0);
 }

 if (pi->pi_owner != ((void*)0)) {



  mtx_unlock(&umtx_lock);
  return (EPERM);
 }
 umtx_pi_setowner(pi, owner);
 uq = TAILQ_FIRST(&pi->pi_blocked);
 if (uq != ((void*)0)) {
  pri = UPRI(uq->uq_thread);
  thread_lock(owner);
  if (pri < UPRI(owner))
   sched_lend_user_prio(owner, pri);
  thread_unlock(owner);
 }
 mtx_unlock(&umtx_lock);
 return (0);
}
