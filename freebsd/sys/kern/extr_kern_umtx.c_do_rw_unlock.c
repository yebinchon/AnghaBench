
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct urwlock {int rw_state; int rw_flags; } ;
struct umtx_q {int uq_key; } ;
struct thread {struct umtx_q* td_umtxq; } ;
typedef int int32_t ;


 int EFAULT ;
 int EPERM ;
 int GET_SHARE (int) ;
 int INT_MAX ;
 int TYPE_RWLOCK ;
 int UMTX_EXCLUSIVE_QUEUE ;
 int UMTX_SHARED_QUEUE ;
 int URWLOCK_PREFER_READER ;
 scalar_t__ URWLOCK_READER_COUNT (int) ;
 int URWLOCK_READ_WAITERS ;
 int URWLOCK_WRITE_OWNER ;
 int URWLOCK_WRITE_WAITERS ;
 int casueword32 (int *,int,int*,int) ;
 int fueword32 (int *,int*) ;
 int umtx_key_get (struct urwlock*,int ,int ,int *) ;
 int umtx_key_release (int *) ;
 int umtxq_busy (int *) ;
 int umtxq_check_susp (struct thread*,int) ;
 int umtxq_lock (int *) ;
 int umtxq_signal_queue (int *,int,int) ;
 int umtxq_unbusy (int *) ;
 int umtxq_unlock (int *) ;

__attribute__((used)) static int
do_rw_unlock(struct thread *td, struct urwlock *rwlock)
{
 struct umtx_q *uq;
 uint32_t flags;
 int32_t state, oldstate;
 int error, rv, q, count;

 uq = td->td_umtxq;
 error = fueword32(&rwlock->rw_flags, &flags);
 if (error == -1)
  return (EFAULT);
 error = umtx_key_get(rwlock, TYPE_RWLOCK, GET_SHARE(flags), &uq->uq_key);
 if (error != 0)
  return (error);

 error = fueword32(&rwlock->rw_state, &state);
 if (error == -1) {
  error = EFAULT;
  goto out;
 }
 if (state & URWLOCK_WRITE_OWNER) {
  for (;;) {
   rv = casueword32(&rwlock->rw_state, state,
       &oldstate, state & ~URWLOCK_WRITE_OWNER);
   if (rv == -1) {
    error = EFAULT;
    goto out;
   }
   if (rv == 1) {
    state = oldstate;
    if (!(oldstate & URWLOCK_WRITE_OWNER)) {
     error = EPERM;
     goto out;
    }
    error = umtxq_check_susp(td, 1);
    if (error != 0)
     goto out;
   } else
    break;
  }
 } else if (URWLOCK_READER_COUNT(state) != 0) {
  for (;;) {
   rv = casueword32(&rwlock->rw_state, state,
       &oldstate, state - 1);
   if (rv == -1) {
    error = EFAULT;
    goto out;
   }
   if (rv == 1) {
    state = oldstate;
    if (URWLOCK_READER_COUNT(oldstate) == 0) {
     error = EPERM;
     goto out;
    }
    error = umtxq_check_susp(td, 1);
    if (error != 0)
     goto out;
   } else
    break;
  }
 } else {
  error = EPERM;
  goto out;
 }

 count = 0;

 if (!(flags & URWLOCK_PREFER_READER)) {
  if (state & URWLOCK_WRITE_WAITERS) {
   count = 1;
   q = UMTX_EXCLUSIVE_QUEUE;
  } else if (state & URWLOCK_READ_WAITERS) {
   count = INT_MAX;
   q = UMTX_SHARED_QUEUE;
  }
 } else {
  if (state & URWLOCK_READ_WAITERS) {
   count = INT_MAX;
   q = UMTX_SHARED_QUEUE;
  } else if (state & URWLOCK_WRITE_WAITERS) {
   count = 1;
   q = UMTX_EXCLUSIVE_QUEUE;
  }
 }

 if (count) {
  umtxq_lock(&uq->uq_key);
  umtxq_busy(&uq->uq_key);
  umtxq_signal_queue(&uq->uq_key, count, q);
  umtxq_unbusy(&uq->uq_key);
  umtxq_unlock(&uq->uq_key);
 }
out:
 umtx_key_release(&uq->uq_key);
 return (error);
}
