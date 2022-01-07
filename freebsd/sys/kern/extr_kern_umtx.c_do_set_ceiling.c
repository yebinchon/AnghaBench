
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct umutex {int m_flags; int* m_ceilings; int m_owner; } ;
struct umtx_q {int uq_key; } ;
struct thread {int td_tid; struct umtx_q* td_umtxq; } ;


 int EFAULT ;
 int EINVAL ;
 int ENOTRECOVERABLE ;
 int EOWNERDEAD ;
 int GET_SHARE (int) ;
 int INT_MAX ;
 int MPASS (int) ;
 int RTP_PRIO_MAX ;
 int TYPE_PP_ROBUST_UMUTEX ;
 int TYPE_PP_UMUTEX ;
 int UMUTEX_CONTESTED ;
 int UMUTEX_PRIO_PROTECT ;
 int UMUTEX_RB_NOTRECOV ;
 int UMUTEX_RB_OWNERDEAD ;
 int UMUTEX_ROBUST ;
 int casueword32 (int*,int,int*,int) ;
 int fueword32 (int*,int*) ;
 int suword32 (int*,int) ;
 int umtx_key_get (struct umutex*,int ,int ,int *) ;
 int umtx_key_release (int *) ;
 int umtxq_busy (int *) ;
 int umtxq_insert (struct umtx_q*) ;
 int umtxq_lock (int *) ;
 int umtxq_remove (struct umtx_q*) ;
 int umtxq_signal (int *,int ) ;
 int umtxq_sleep (struct umtx_q*,char*,int *) ;
 int umtxq_unbusy (int *) ;
 int umtxq_unlock (int *) ;

__attribute__((used)) static int
do_set_ceiling(struct thread *td, struct umutex *m, uint32_t ceiling,
    uint32_t *old_ceiling)
{
 struct umtx_q *uq;
 uint32_t flags, id, owner, save_ceiling;
 int error, rv, rv1;

 error = fueword32(&m->m_flags, &flags);
 if (error == -1)
  return (EFAULT);
 if ((flags & UMUTEX_PRIO_PROTECT) == 0)
  return (EINVAL);
 if (ceiling > RTP_PRIO_MAX)
  return (EINVAL);
 id = td->td_tid;
 uq = td->td_umtxq;
 if ((error = umtx_key_get(m, (flags & UMUTEX_ROBUST) != 0 ?
     TYPE_PP_ROBUST_UMUTEX : TYPE_PP_UMUTEX, GET_SHARE(flags),
     &uq->uq_key)) != 0)
  return (error);
 for (;;) {
  umtxq_lock(&uq->uq_key);
  umtxq_busy(&uq->uq_key);
  umtxq_unlock(&uq->uq_key);

  rv = fueword32(&m->m_ceilings[0], &save_ceiling);
  if (rv == -1) {
   error = EFAULT;
   break;
  }

  rv = casueword32(&m->m_owner, UMUTEX_CONTESTED, &owner,
      id | UMUTEX_CONTESTED);
  if (rv == -1) {
   error = EFAULT;
   break;
  }

  if (rv == 0) {
   MPASS(owner == UMUTEX_CONTESTED);
   rv = suword32(&m->m_ceilings[0], ceiling);
   rv1 = suword32(&m->m_owner, UMUTEX_CONTESTED);
   error = (rv == 0 && rv1 == 0) ? 0: EFAULT;
   break;
  }

  if ((owner & ~UMUTEX_CONTESTED) == id) {
   rv = suword32(&m->m_ceilings[0], ceiling);
   error = rv == 0 ? 0 : EFAULT;
   break;
  }

  if (owner == UMUTEX_RB_OWNERDEAD) {
   error = EOWNERDEAD;
   break;
  } else if (owner == UMUTEX_RB_NOTRECOV) {
   error = ENOTRECOVERABLE;
   break;
  }





  if (error != 0)
   break;






  umtxq_lock(&uq->uq_key);
  umtxq_insert(uq);
  umtxq_unbusy(&uq->uq_key);
  error = umtxq_sleep(uq, "umtxpp", ((void*)0));
  umtxq_remove(uq);
  umtxq_unlock(&uq->uq_key);
 }
 umtxq_lock(&uq->uq_key);
 if (error == 0)
  umtxq_signal(&uq->uq_key, INT_MAX);
 umtxq_unbusy(&uq->uq_key);
 umtxq_unlock(&uq->uq_key);
 umtx_key_release(&uq->uq_key);
 if (error == 0 && old_ceiling != ((void*)0)) {
  rv = suword32(old_ceiling, save_ceiling);
  error = rv == 0 ? 0 : EFAULT;
 }
 return (error);
}
