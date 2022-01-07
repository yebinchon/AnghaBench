
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct umtx_q {int uq_flags; int uq_key; } ;
struct thread {struct umtx_q* td_umtxq; } ;
struct abs_timeout {int cur; int end; } ;
struct _usem2 {int _count; int _flags; } ;
struct _umtx_time {int _flags; int _timeout; } ;


 int EFAULT ;
 int EINTR ;
 int ERESTART ;
 int GET_SHARE (scalar_t__) ;
 int TYPE_SEM ;
 int UMTX_ABSTIME ;
 int UQF_UMTXQ ;
 scalar_t__ USEM_COUNT (scalar_t__) ;
 scalar_t__ USEM_HAS_WAITERS ;
 int abs_timeout_init2 (struct abs_timeout*,struct _umtx_time*) ;
 int abs_timeout_update (struct abs_timeout*) ;
 int casueword32 (int *,int ,scalar_t__*,scalar_t__) ;
 int fueword32 (int *,scalar_t__*) ;
 scalar_t__ fuword32 (int *) ;
 int timespecsub (int *,int *,int *) ;
 int umtx_key_get (struct _usem2*,int ,int ,int *) ;
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
do_sem2_wait(struct thread *td, struct _usem2 *sem, struct _umtx_time *timeout)
{
 struct abs_timeout timo;
 struct umtx_q *uq;
 uint32_t count, flags;
 int error, rv;

 uq = td->td_umtxq;
 flags = fuword32(&sem->_flags);
 if (timeout != ((void*)0))
  abs_timeout_init2(&timo, timeout);

again:
 error = umtx_key_get(sem, TYPE_SEM, GET_SHARE(flags), &uq->uq_key);
 if (error != 0)
  return (error);
 umtxq_lock(&uq->uq_key);
 umtxq_busy(&uq->uq_key);
 umtxq_insert(uq);
 umtxq_unlock(&uq->uq_key);
 rv = fueword32(&sem->_count, &count);
 if (rv == -1) {
  umtxq_lock(&uq->uq_key);
  umtxq_unbusy(&uq->uq_key);
  umtxq_remove(uq);
  umtxq_unlock(&uq->uq_key);
  umtx_key_release(&uq->uq_key);
  return (EFAULT);
 }
 for (;;) {
  if (USEM_COUNT(count) != 0) {
   umtxq_lock(&uq->uq_key);
   umtxq_unbusy(&uq->uq_key);
   umtxq_remove(uq);
   umtxq_unlock(&uq->uq_key);
   umtx_key_release(&uq->uq_key);
   return (0);
  }
  if (count == USEM_HAS_WAITERS)
   break;
  rv = casueword32(&sem->_count, 0, &count, USEM_HAS_WAITERS);
  if (rv == 0)
   break;
  umtxq_lock(&uq->uq_key);
  umtxq_unbusy(&uq->uq_key);
  umtxq_remove(uq);
  umtxq_unlock(&uq->uq_key);
  umtx_key_release(&uq->uq_key);
  if (rv == -1)
   return (EFAULT);
  rv = umtxq_check_susp(td, 1);
  if (rv != 0)
   return (rv);
  goto again;
 }
 umtxq_lock(&uq->uq_key);
 umtxq_unbusy(&uq->uq_key);

 error = umtxq_sleep(uq, "usem", timeout == ((void*)0) ? ((void*)0) : &timo);

 if ((uq->uq_flags & UQF_UMTXQ) == 0)
  error = 0;
 else {
  umtxq_remove(uq);
  if (timeout != ((void*)0) && (timeout->_flags & UMTX_ABSTIME) == 0) {

   if (error == ERESTART)
    error = EINTR;
   if (error == EINTR) {
    abs_timeout_update(&timo);
    timespecsub(&timo.end, &timo.cur,
        &timeout->_timeout);
   }
  }
 }
 umtxq_unlock(&uq->uq_key);
 umtx_key_release(&uq->uq_key);
 return (error);
}
