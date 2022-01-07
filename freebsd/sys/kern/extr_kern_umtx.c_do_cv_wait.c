
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int u_long ;
struct umutex {int dummy; } ;
struct umtx_q {int uq_flags; int uq_key; TYPE_1__* uq_cur_queue; } ;
struct ucond {int c_has_waiters; int c_clockid; int c_flags; } ;
struct timespec {int dummy; } ;
struct thread {struct umtx_q* td_umtxq; } ;
struct abs_timeout {int dummy; } ;
struct TYPE_2__ {int length; } ;


 scalar_t__ CLOCK_REALTIME ;
 scalar_t__ CLOCK_THREAD_CPUTIME_ID ;
 int CVWAIT_ABSTIME ;
 int CVWAIT_CLOCKID ;
 int EFAULT ;
 int EINTR ;
 int EINVAL ;
 int ERESTART ;
 int GET_SHARE (scalar_t__) ;
 int TYPE_CV ;
 int UQF_UMTXQ ;
 int abs_timeout_init (struct abs_timeout*,scalar_t__,int,struct timespec*) ;
 int do_unlock_umutex (struct thread*,struct umutex*,int) ;
 int fueword32 (int *,scalar_t__*) ;
 int suword32 (int *,int) ;
 int umtx_key_get (struct ucond*,int ,int ,int *) ;
 int umtx_key_release (int *) ;
 int umtxq_busy (int *) ;
 int umtxq_insert (struct umtx_q*) ;
 int umtxq_lock (int *) ;
 int umtxq_remove (struct umtx_q*) ;
 int umtxq_sleep (struct umtx_q*,char*,struct abs_timeout*) ;
 int umtxq_unbusy (int *) ;
 int umtxq_unbusy_unlocked (int *) ;
 int umtxq_unlock (int *) ;

__attribute__((used)) static int
do_cv_wait(struct thread *td, struct ucond *cv, struct umutex *m,
    struct timespec *timeout, u_long wflags)
{
 struct abs_timeout timo;
 struct umtx_q *uq;
 uint32_t flags, clockid, hasw;
 int error;

 uq = td->td_umtxq;
 error = fueword32(&cv->c_flags, &flags);
 if (error == -1)
  return (EFAULT);
 error = umtx_key_get(cv, TYPE_CV, GET_SHARE(flags), &uq->uq_key);
 if (error != 0)
  return (error);

 if ((wflags & CVWAIT_CLOCKID) != 0) {
  error = fueword32(&cv->c_clockid, &clockid);
  if (error == -1) {
   umtx_key_release(&uq->uq_key);
   return (EFAULT);
  }
  if (clockid < CLOCK_REALTIME ||
      clockid >= CLOCK_THREAD_CPUTIME_ID) {

   umtx_key_release(&uq->uq_key);
   return (EINVAL);
  }
 } else {
  clockid = CLOCK_REALTIME;
 }

 umtxq_lock(&uq->uq_key);
 umtxq_busy(&uq->uq_key);
 umtxq_insert(uq);
 umtxq_unlock(&uq->uq_key);





 error = fueword32(&cv->c_has_waiters, &hasw);
 if (error == 0 && hasw == 0)
  suword32(&cv->c_has_waiters, 1);

 umtxq_unbusy_unlocked(&uq->uq_key);

 error = do_unlock_umutex(td, m, 0);

 if (timeout != ((void*)0))
  abs_timeout_init(&timo, clockid, (wflags & CVWAIT_ABSTIME) != 0,
      timeout);

 umtxq_lock(&uq->uq_key);
 if (error == 0) {
  error = umtxq_sleep(uq, "ucond", timeout == ((void*)0) ?
      ((void*)0) : &timo);
 }

 if ((uq->uq_flags & UQF_UMTXQ) == 0)
  error = 0;
 else {





  umtxq_busy(&uq->uq_key);
  if ((uq->uq_flags & UQF_UMTXQ) != 0) {
   int oldlen = uq->uq_cur_queue->length;
   umtxq_remove(uq);
   if (oldlen == 1) {
    umtxq_unlock(&uq->uq_key);
    suword32(&cv->c_has_waiters, 0);
    umtxq_lock(&uq->uq_key);
   }
  }
  umtxq_unbusy(&uq->uq_key);
  if (error == ERESTART)
   error = EINTR;
 }

 umtxq_unlock(&uq->uq_key);
 umtx_key_release(&uq->uq_key);
 return (error);
}
