
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long uint32_t ;
struct urwlock {int rw_state; int rw_blocked_readers; int rw_flags; } ;
struct umtx_q {int uq_key; } ;
struct thread {struct umtx_q* td_umtxq; } ;
struct abs_timeout {int dummy; } ;
struct _umtx_time {int dummy; } ;
typedef long int32_t ;


 int EAGAIN ;
 int EFAULT ;
 int EINTR ;
 int ERESTART ;
 int GET_SHARE (long) ;
 int MPASS (int) ;
 int TYPE_RWLOCK ;
 scalar_t__ URWLOCK_MAX_READERS ;
 long URWLOCK_PREFER_READER ;
 scalar_t__ URWLOCK_READER_COUNT (long) ;
 long URWLOCK_READ_WAITERS ;
 long URWLOCK_WRITE_OWNER ;
 long URWLOCK_WRITE_WAITERS ;
 scalar_t__ __predict_false (int) ;
 int abs_timeout_init2 (struct abs_timeout*,struct _umtx_time*) ;
 int casueword32 (int *,long,long*,long) ;
 int fueword32 (int *,long*) ;
 int suword32 (int *,long) ;
 int umtx_key_get (struct urwlock*,int ,int ,int *) ;
 int umtx_key_release (int *) ;
 int umtxq_busy (int *) ;
 int umtxq_check_susp (struct thread*,int) ;
 int umtxq_insert (struct umtx_q*) ;
 int umtxq_lock (int *) ;
 int umtxq_remove (struct umtx_q*) ;
 int umtxq_sleep (struct umtx_q*,char*,struct abs_timeout*) ;
 int umtxq_unbusy (int *) ;
 int umtxq_unbusy_unlocked (int *) ;
 int umtxq_unlock (int *) ;

__attribute__((used)) static int
do_rw_rdlock(struct thread *td, struct urwlock *rwlock, long fflag,
    struct _umtx_time *timeout)
{
 struct abs_timeout timo;
 struct umtx_q *uq;
 uint32_t flags, wrflags;
 int32_t state, oldstate;
 int32_t blocked_readers;
 int error, error1, rv;

 uq = td->td_umtxq;
 error = fueword32(&rwlock->rw_flags, &flags);
 if (error == -1)
  return (EFAULT);
 error = umtx_key_get(rwlock, TYPE_RWLOCK, GET_SHARE(flags), &uq->uq_key);
 if (error != 0)
  return (error);

 if (timeout != ((void*)0))
  abs_timeout_init2(&timo, timeout);

 wrflags = URWLOCK_WRITE_OWNER;
 if (!(fflag & URWLOCK_PREFER_READER) && !(flags & URWLOCK_PREFER_READER))
  wrflags |= URWLOCK_WRITE_WAITERS;

 for (;;) {
  rv = fueword32(&rwlock->rw_state, &state);
  if (rv == -1) {
   umtx_key_release(&uq->uq_key);
   return (EFAULT);
  }


  while (!(state & wrflags)) {
   if (__predict_false(URWLOCK_READER_COUNT(state) ==
       URWLOCK_MAX_READERS)) {
    umtx_key_release(&uq->uq_key);
    return (EAGAIN);
   }
   rv = casueword32(&rwlock->rw_state, state,
       &oldstate, state + 1);
   if (rv == -1) {
    umtx_key_release(&uq->uq_key);
    return (EFAULT);
   }
   if (rv == 0) {
    MPASS(oldstate == state);
    umtx_key_release(&uq->uq_key);
    return (0);
   }
   error = umtxq_check_susp(td, 1);
   if (error != 0)
    break;
   state = oldstate;
  }

  if (error)
   break;


  umtxq_lock(&uq->uq_key);
  umtxq_busy(&uq->uq_key);
  umtxq_unlock(&uq->uq_key);





  rv = fueword32(&rwlock->rw_state, &state);
  if (rv == -1)
   error = EFAULT;


  while (error == 0 && (state & wrflags) &&
      !(state & URWLOCK_READ_WAITERS)) {
   rv = casueword32(&rwlock->rw_state, state,
       &oldstate, state | URWLOCK_READ_WAITERS);
   if (rv == -1) {
    error = EFAULT;
    break;
   }
   if (rv == 0) {
    MPASS(oldstate == state);
    goto sleep;
   }
   state = oldstate;
   error = umtxq_check_susp(td, 0);
   if (error != 0)
    break;
  }
  if (error != 0) {
   umtxq_unbusy_unlocked(&uq->uq_key);
   break;
  }


  if (!(state & wrflags)) {
   umtxq_unbusy_unlocked(&uq->uq_key);
   error = umtxq_check_susp(td, 1);
   if (error != 0)
    break;
   continue;
  }

sleep:




  rv = fueword32(&rwlock->rw_blocked_readers,
      &blocked_readers);
  if (rv == -1) {
   umtxq_unbusy_unlocked(&uq->uq_key);
   error = EFAULT;
   break;
  }
  suword32(&rwlock->rw_blocked_readers, blocked_readers+1);

  while (state & wrflags) {
   umtxq_lock(&uq->uq_key);
   umtxq_insert(uq);
   umtxq_unbusy(&uq->uq_key);

   error = umtxq_sleep(uq, "urdlck", timeout == ((void*)0) ?
       ((void*)0) : &timo);

   umtxq_busy(&uq->uq_key);
   umtxq_remove(uq);
   umtxq_unlock(&uq->uq_key);
   if (error)
    break;
   rv = fueword32(&rwlock->rw_state, &state);
   if (rv == -1) {
    error = EFAULT;
    break;
   }
  }


  rv = fueword32(&rwlock->rw_blocked_readers,
      &blocked_readers);
  if (rv == -1) {
   umtxq_unbusy_unlocked(&uq->uq_key);
   error = EFAULT;
   break;
  }
  suword32(&rwlock->rw_blocked_readers, blocked_readers-1);
  if (blocked_readers == 1) {
   rv = fueword32(&rwlock->rw_state, &state);
   if (rv == -1) {
    umtxq_unbusy_unlocked(&uq->uq_key);
    error = EFAULT;
    break;
   }
   for (;;) {
    rv = casueword32(&rwlock->rw_state, state,
        &oldstate, state & ~URWLOCK_READ_WAITERS);
    if (rv == -1) {
     error = EFAULT;
     break;
    }
    if (rv == 0) {
     MPASS(oldstate == state);
     break;
    }
    state = oldstate;
    error1 = umtxq_check_susp(td, 0);
    if (error1 != 0) {
     if (error == 0)
      error = error1;
     break;
    }
   }
  }

  umtxq_unbusy_unlocked(&uq->uq_key);
  if (error != 0)
   break;
 }
 umtx_key_release(&uq->uq_key);
 if (error == ERESTART)
  error = EINTR;
 return (error);
}
