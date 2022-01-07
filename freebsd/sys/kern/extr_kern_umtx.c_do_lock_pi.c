
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct umutex {int m_owner; } ;
struct umtx_q {int uq_key; } ;
struct umtx_pi {int pi_key; } ;
struct thread {scalar_t__ td_tid; struct umtx_q* td_umtxq; } ;
struct abs_timeout {int dummy; } ;
struct _umtx_time {int dummy; } ;


 int EBUSY ;
 int EDEADLK ;
 int EFAULT ;
 int ENOTRECOVERABLE ;
 int EOWNERDEAD ;
 int GET_SHARE (scalar_t__) ;
 int MPASS (int) ;
 int M_NOWAIT ;
 int M_WAITOK ;
 int TYPE_PI_ROBUST_UMUTEX ;
 int TYPE_PI_UMUTEX ;
 scalar_t__ UMUTEX_CONTESTED ;
 scalar_t__ UMUTEX_RB_NOTRECOV ;
 scalar_t__ UMUTEX_RB_OWNERDEAD ;
 scalar_t__ UMUTEX_ROBUST ;
 scalar_t__ UMUTEX_UNOWNED ;
 scalar_t__ USYNC_PROCESS_SHARED ;
 int abs_timeout_init2 (struct abs_timeout*,struct _umtx_time*) ;
 int casueword32 (int *,scalar_t__,scalar_t__*,scalar_t__) ;
 int casuword32 (int *,scalar_t__,scalar_t__) ;
 int umtx_key_get (struct umutex*,int ,int ,int *) ;
 int umtx_key_release (int *) ;
 struct umtx_pi* umtx_pi_alloc (int ) ;
 int umtx_pi_claim (struct umtx_pi*,struct thread*) ;
 int umtx_pi_free (struct umtx_pi*) ;
 int umtx_pi_insert (struct umtx_pi*) ;
 struct umtx_pi* umtx_pi_lookup (int *) ;
 int umtx_pi_ref (struct umtx_pi*) ;
 int umtx_pi_unref (struct umtx_pi*) ;
 int umtxq_busy (int *) ;
 int umtxq_check_susp (struct thread*,int) ;
 int umtxq_lock (int *) ;
 int umtxq_sleep_pi (struct umtx_q*,struct umtx_pi*,scalar_t__,char*,struct abs_timeout*,int) ;
 int umtxq_unbusy (int *) ;
 int umtxq_unbusy_unlocked (int *) ;
 int umtxq_unlock (int *) ;

__attribute__((used)) static int
do_lock_pi(struct thread *td, struct umutex *m, uint32_t flags,
    struct _umtx_time *timeout, int try)
{
 struct abs_timeout timo;
 struct umtx_q *uq;
 struct umtx_pi *pi, *new_pi;
 uint32_t id, old_owner, owner, old;
 int error, rv;

 id = td->td_tid;
 uq = td->td_umtxq;

 if ((error = umtx_key_get(m, (flags & UMUTEX_ROBUST) != 0 ?
     TYPE_PI_ROBUST_UMUTEX : TYPE_PI_UMUTEX, GET_SHARE(flags),
     &uq->uq_key)) != 0)
  return (error);

 if (timeout != ((void*)0))
  abs_timeout_init2(&timo, timeout);

 umtxq_lock(&uq->uq_key);
 pi = umtx_pi_lookup(&uq->uq_key);
 if (pi == ((void*)0)) {
  new_pi = umtx_pi_alloc(M_NOWAIT);
  if (new_pi == ((void*)0)) {
   umtxq_unlock(&uq->uq_key);
   new_pi = umtx_pi_alloc(M_WAITOK);
   umtxq_lock(&uq->uq_key);
   pi = umtx_pi_lookup(&uq->uq_key);
   if (pi != ((void*)0)) {
    umtx_pi_free(new_pi);
    new_pi = ((void*)0);
   }
  }
  if (new_pi != ((void*)0)) {
   new_pi->pi_key = uq->uq_key;
   umtx_pi_insert(new_pi);
   pi = new_pi;
  }
 }
 umtx_pi_ref(pi);
 umtxq_unlock(&uq->uq_key);





 for (;;) {



  rv = casueword32(&m->m_owner, UMUTEX_UNOWNED, &owner, id);

  if (rv == -1) {
   error = EFAULT;
   break;
  }

  if (rv == 0) {
   MPASS(owner == UMUTEX_UNOWNED);
   error = 0;
   break;
  }

  if (owner == UMUTEX_RB_NOTRECOV) {
   error = ENOTRECOVERABLE;
   break;
  }





  if (error == 0) {
   error = umtxq_check_susp(td, 1);
   if (error != 0)
    break;
  }


  if (owner == UMUTEX_CONTESTED || owner == UMUTEX_RB_OWNERDEAD) {
   old_owner = owner;
   rv = casueword32(&m->m_owner, owner, &owner,
       id | UMUTEX_CONTESTED);

   if (rv == -1) {
    error = EFAULT;
    break;
   }
   if (rv == 1) {
    if (error == 0) {
     error = umtxq_check_susp(td, 1);
     if (error != 0)
      break;
    }





    continue;
   }

   MPASS(rv == 0);
   MPASS(owner == old_owner);
   umtxq_lock(&uq->uq_key);
   umtxq_busy(&uq->uq_key);
   error = umtx_pi_claim(pi, td);
   umtxq_unbusy(&uq->uq_key);
   umtxq_unlock(&uq->uq_key);
   if (error != 0) {






    (void)casuword32(&m->m_owner,
        id | UMUTEX_CONTESTED, old_owner);
   }
   if (error == 0 && old_owner == UMUTEX_RB_OWNERDEAD)
    error = EOWNERDEAD;
   break;
  }

  if ((owner & ~UMUTEX_CONTESTED) == id) {
   error = EDEADLK;
   break;
  }

  if (try != 0) {
   error = EBUSY;
   break;
  }





  if (error != 0)
   break;

  umtxq_lock(&uq->uq_key);
  umtxq_busy(&uq->uq_key);
  umtxq_unlock(&uq->uq_key);







  rv = casueword32(&m->m_owner, owner, &old, owner |
      UMUTEX_CONTESTED);


  if (rv == -1) {
   umtxq_unbusy_unlocked(&uq->uq_key);
   error = EFAULT;
   break;
  }
  if (rv == 1) {
   umtxq_unbusy_unlocked(&uq->uq_key);
   error = umtxq_check_susp(td, 1);
   if (error != 0)
    break;







   continue;
  }

  umtxq_lock(&uq->uq_key);


  MPASS(old == owner);
  error = umtxq_sleep_pi(uq, pi, owner & ~UMUTEX_CONTESTED,
      "umtxpi", timeout == ((void*)0) ? ((void*)0) : &timo,
      (flags & USYNC_PROCESS_SHARED) != 0);
  if (error != 0)
   continue;

  error = umtxq_check_susp(td, 0);
  if (error != 0)
   break;
 }

 umtxq_lock(&uq->uq_key);
 umtx_pi_unref(pi);
 umtxq_unlock(&uq->uq_key);

 umtx_key_release(&uq->uq_key);
 return (error);
}
