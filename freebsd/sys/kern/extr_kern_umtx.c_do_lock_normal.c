
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct umutex {int m_owner; } ;
struct umtx_q {int uq_key; } ;
struct thread {int td_tid; struct umtx_q* td_umtxq; } ;
struct abs_timeout {int dummy; } ;
struct _umtx_time {int dummy; } ;


 int EBUSY ;
 int EFAULT ;
 int ENOTRECOVERABLE ;
 int EOWNERDEAD ;
 int GET_SHARE (int) ;
 int MPASS (int) ;
 int TYPE_NORMAL_UMUTEX ;
 int UMUTEX_CONTESTED ;
 int UMUTEX_RB_NOTRECOV ;
 int UMUTEX_RB_OWNERDEAD ;
 int UMUTEX_UNOWNED ;
 int _UMUTEX_TRY ;
 int _UMUTEX_WAIT ;
 int abs_timeout_init2 (struct abs_timeout*,struct _umtx_time*) ;
 int casueword32 (int *,int,int*,int) ;
 int fueword32 (int *,int*) ;
 int umtx_key_get (struct umutex*,int ,int ,int *) ;
 int umtx_key_release (int *) ;
 int umtxq_busy (int *) ;
 int umtxq_check_susp (struct thread*,int) ;
 int umtxq_insert (struct umtx_q*) ;
 int umtxq_lock (int *) ;
 int umtxq_remove (struct umtx_q*) ;
 int umtxq_sleep (struct umtx_q*,char*,struct abs_timeout*) ;
 int umtxq_unbusy (int *) ;
 int umtxq_unlock (int *) ;

__attribute__((used)) static int
do_lock_normal(struct thread *td, struct umutex *m, uint32_t flags,
    struct _umtx_time *timeout, int mode)
{
 struct abs_timeout timo;
 struct umtx_q *uq;
 uint32_t owner, old, id;
 int error, rv;

 id = td->td_tid;
 uq = td->td_umtxq;
 error = 0;
 if (timeout != ((void*)0))
  abs_timeout_init2(&timo, timeout);





 for (;;) {
  rv = fueword32(&m->m_owner, &owner);
  if (rv == -1)
   return (EFAULT);
  if (mode == _UMUTEX_WAIT) {
   if (owner == UMUTEX_UNOWNED ||
       owner == UMUTEX_CONTESTED ||
       owner == UMUTEX_RB_OWNERDEAD ||
       owner == UMUTEX_RB_NOTRECOV)
    return (0);
  } else {






   if (owner == UMUTEX_RB_OWNERDEAD) {
    rv = casueword32(&m->m_owner,
        UMUTEX_RB_OWNERDEAD, &owner,
        id | UMUTEX_CONTESTED);
    if (rv == -1)
     return (EFAULT);
    if (rv == 0) {
     MPASS(owner == UMUTEX_RB_OWNERDEAD);
     return (EOWNERDEAD);
    }
    MPASS(rv == 1);
    rv = umtxq_check_susp(td, 0);
    if (rv != 0)
     return (rv);
    continue;
   }
   if (owner == UMUTEX_RB_NOTRECOV)
    return (ENOTRECOVERABLE);





   rv = casueword32(&m->m_owner, UMUTEX_UNOWNED,
       &owner, id);

   if (rv == -1)
    return (EFAULT);


   if (rv == 0) {
    MPASS(owner == UMUTEX_UNOWNED);
    return (0);
   }





   MPASS(rv == 1);
   if (owner == UMUTEX_CONTESTED) {
    rv = casueword32(&m->m_owner,
        UMUTEX_CONTESTED, &owner,
        id | UMUTEX_CONTESTED);

    if (rv == -1)
     return (EFAULT);
    if (rv == 0) {
     MPASS(owner == UMUTEX_CONTESTED);
     return (0);
    }
    if (rv == 1) {
     rv = umtxq_check_susp(td, 0);
     if (rv != 0)
      return (rv);
    }





    continue;
   }


   rv = umtxq_check_susp(td, 0);
   if (rv != 0)
    return (rv);
  }

  if (mode == _UMUTEX_TRY)
   return (EBUSY);





  if (error != 0)
   return (error);

  if ((error = umtx_key_get(m, TYPE_NORMAL_UMUTEX,
      GET_SHARE(flags), &uq->uq_key)) != 0)
   return (error);

  umtxq_lock(&uq->uq_key);
  umtxq_busy(&uq->uq_key);
  umtxq_insert(uq);
  umtxq_unlock(&uq->uq_key);







  rv = casueword32(&m->m_owner, owner, &old,
      owner | UMUTEX_CONTESTED);


  if (rv == -1 || rv == 1) {
   umtxq_lock(&uq->uq_key);
   umtxq_remove(uq);
   umtxq_unbusy(&uq->uq_key);
   umtxq_unlock(&uq->uq_key);
   umtx_key_release(&uq->uq_key);
   if (rv == -1)
    return (EFAULT);
   if (rv == 1) {
    rv = umtxq_check_susp(td, 0);
    if (rv != 0)
     return (rv);
   }
   continue;
  }






  umtxq_lock(&uq->uq_key);
  umtxq_unbusy(&uq->uq_key);
  MPASS(old == owner);
  error = umtxq_sleep(uq, "umtxn", timeout == ((void*)0) ?
      ((void*)0) : &timo);
  umtxq_remove(uq);
  umtxq_unlock(&uq->uq_key);
  umtx_key_release(&uq->uq_key);

  if (error == 0)
   error = umtxq_check_susp(td, 0);
 }

 return (0);
}
