
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct umutex {int m_owner; } ;
struct umtx_key {int dummy; } ;
struct thread {int td_tid; } ;


 int EFAULT ;
 int EINVAL ;
 int EPERM ;
 int GET_SHARE (int) ;
 int MPASS (int) ;
 int TYPE_NORMAL_UMUTEX ;
 int UMUTEX_CONTESTED ;
 int casueword32 (int *,int,int*,int) ;
 int fueword32 (int *,int*) ;
 int umtx_key_get (struct umutex*,int ,int ,struct umtx_key*) ;
 int umtx_key_release (struct umtx_key*) ;
 int umtx_unlock_val (int,int) ;
 int umtxq_busy (struct umtx_key*) ;
 int umtxq_check_susp (struct thread*,int) ;
 int umtxq_count (struct umtx_key*) ;
 int umtxq_lock (struct umtx_key*) ;
 int umtxq_signal (struct umtx_key*,int) ;
 int umtxq_unbusy (struct umtx_key*) ;
 int umtxq_unlock (struct umtx_key*) ;

__attribute__((used)) static int
do_unlock_normal(struct thread *td, struct umutex *m, uint32_t flags, bool rb)
{
 struct umtx_key key;
 uint32_t owner, old, id, newlock;
 int error, count;

 id = td->td_tid;

again:



 error = fueword32(&m->m_owner, &owner);
 if (error == -1)
  return (EFAULT);

 if ((owner & ~UMUTEX_CONTESTED) != id)
  return (EPERM);

 newlock = umtx_unlock_val(flags, rb);
 if ((owner & UMUTEX_CONTESTED) == 0) {
  error = casueword32(&m->m_owner, owner, &old, newlock);
  if (error == -1)
   return (EFAULT);
  if (error == 1) {
   error = umtxq_check_susp(td, 0);
   if (error != 0)
    return (error);
   goto again;
  }
  MPASS(old == owner);
  return (0);
 }


 if ((error = umtx_key_get(m, TYPE_NORMAL_UMUTEX, GET_SHARE(flags),
     &key)) != 0)
  return (error);

 umtxq_lock(&key);
 umtxq_busy(&key);
 count = umtxq_count(&key);
 umtxq_unlock(&key);






 if (count > 1)
  newlock |= UMUTEX_CONTESTED;
 error = casueword32(&m->m_owner, owner, &old, newlock);
 umtxq_lock(&key);
 umtxq_signal(&key, 1);
 umtxq_unbusy(&key);
 umtxq_unlock(&key);
 umtx_key_release(&key);
 if (error == -1)
  return (EFAULT);
 if (error == 1) {
  if (old != owner)
   return (EINVAL);
  error = umtxq_check_susp(td, 0);
  if (error != 0)
   return (error);
  goto again;
 }
 return (0);
}
