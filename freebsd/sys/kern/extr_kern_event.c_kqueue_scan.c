
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {scalar_t__ tv_sec; int tv_nsec; } ;
struct thread {int* td_retval; } ;
struct kqueue {scalar_t__ kq_count; int kq_head; int kq_lock; int kq_state; } ;
struct kevent {int dummy; } ;
struct knote {int kn_status; int kn_flags; scalar_t__ kn_fflags; scalar_t__ kn_data; struct kevent kn_kevent; TYPE_1__* kn_fop; } ;
struct knlist {int dummy; } ;
struct kevent_copyops {int (* k_copyout ) (int ,struct kevent*,int) ;int arg; } ;
typedef int sbintime_t ;
struct TYPE_2__ {scalar_t__ (* f_event ) (struct knote*,int ) ;int (* f_touch ) (struct knote*,struct kevent*,int ) ;int f_isfd; } ;


 int C_ABSOLUTE ;
 int EINTR ;
 int EINVAL ;
 int ERESTART ;
 int EVENT_PROCESS ;
 int EV_CLEAR ;
 int EV_DISPATCH ;
 int EV_DROP ;
 int EV_ONESHOT ;
 int EWOULDBLOCK ;
 scalar_t__ INT32_MAX ;
 int KASSERT (int,char*) ;
 int KN_ACTIVE ;
 int KN_DISABLED ;
 int KN_KQUEUE ;
 int KN_MARKER ;
 int KN_QUEUED ;
 int KN_SCAN ;
 int KQ_FLUXWAIT ;
 int KQ_FLUX_WAKEUP (struct kqueue*) ;
 int KQ_GLOBAL_LOCK (int *,int) ;
 int KQ_GLOBAL_UNLOCK (int *,int) ;
 int KQ_LOCK (struct kqueue*) ;
 int KQ_NEVENTS ;
 int KQ_NOTOWNED (struct kqueue*) ;
 int KQ_OWNED (struct kqueue*) ;
 int KQ_SLEEP ;
 int KQ_UNLOCK (struct kqueue*) ;
 int KQ_UNLOCK_FLUX (struct kqueue*) ;
 int M_WAITOK ;
 int PCATCH ;
 int PSOCK ;
 int SBT_MAX ;
 struct knote* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct knote*,int ) ;
 int TAILQ_REMOVE (int *,struct knote*,int ) ;
 scalar_t__ TIMESEL (int*,int) ;
 int kn_enter_flux (struct knote*) ;
 scalar_t__ kn_in_flux (struct knote*) ;
 int kn_leave_flux (struct knote*) ;
 struct knlist* kn_list_lock (struct knote*) ;
 int kn_list_unlock (struct knlist*) ;
 int kn_tqe ;
 struct knote* knote_alloc (int ) ;
 int knote_drop (struct knote*,struct thread*) ;
 int knote_free (struct knote*) ;
 int kq_global ;
 int msleep (struct kqueue*,int *,int,char*,int ) ;
 int msleep_sbt (struct kqueue*,int *,int,char*,int,int,int ) ;
 scalar_t__ stub1 (struct knote*,int ) ;
 int stub2 (struct knote*,struct kevent*,int ) ;
 int stub3 (int ,struct kevent*,int) ;
 int stub4 (int ,struct kevent*,int) ;
 int tc_precexp ;
 scalar_t__ tc_tick_sbt ;
 scalar_t__ timespecisset (struct timespec const*) ;
 int tstosbt (struct timespec const) ;

__attribute__((used)) static int
kqueue_scan(struct kqueue *kq, int maxevents, struct kevent_copyops *k_ops,
    const struct timespec *tsp, struct kevent *keva, struct thread *td)
{
 struct kevent *kevp;
 struct knote *kn, *marker;
 struct knlist *knl;
 sbintime_t asbt, rsbt;
 int count, error, haskqglobal, influx, nkev, touch;

 count = maxevents;
 nkev = 0;
 error = 0;
 haskqglobal = 0;

 if (maxevents == 0)
  goto done_nl;

 rsbt = 0;
 if (tsp != ((void*)0)) {
  if (tsp->tv_sec < 0 || tsp->tv_nsec < 0 ||
      tsp->tv_nsec >= 1000000000) {
   error = EINVAL;
   goto done_nl;
  }
  if (timespecisset(tsp)) {
   if (tsp->tv_sec <= INT32_MAX) {
    rsbt = tstosbt(*tsp);
    if (TIMESEL(&asbt, rsbt))
     asbt += tc_tick_sbt;
    if (asbt <= SBT_MAX - rsbt)
     asbt += rsbt;
    else
     asbt = 0;
    rsbt >>= tc_precexp;
   } else
    asbt = 0;
  } else
   asbt = -1;
 } else
  asbt = 0;
 marker = knote_alloc(M_WAITOK);
 marker->kn_status = KN_MARKER;
 KQ_LOCK(kq);

retry:
 kevp = keva;
 if (kq->kq_count == 0) {
  if (asbt == -1) {
   error = EWOULDBLOCK;
  } else {
   kq->kq_state |= KQ_SLEEP;
   error = msleep_sbt(kq, &kq->kq_lock, PSOCK | PCATCH,
       "kqread", asbt, rsbt, C_ABSOLUTE);
  }
  if (error == 0)
   goto retry;

  if (error == ERESTART)
   error = EINTR;
  else if (error == EWOULDBLOCK)
   error = 0;
  goto done;
 }

 TAILQ_INSERT_TAIL(&kq->kq_head, marker, kn_tqe);
 influx = 0;
 while (count) {
  KQ_OWNED(kq);
  kn = TAILQ_FIRST(&kq->kq_head);

  if ((kn->kn_status == KN_MARKER && kn != marker) ||
      kn_in_flux(kn)) {
   if (influx) {
    influx = 0;
    KQ_FLUX_WAKEUP(kq);
   }
   kq->kq_state |= KQ_FLUXWAIT;
   error = msleep(kq, &kq->kq_lock, PSOCK,
       "kqflxwt", 0);
   continue;
  }

  TAILQ_REMOVE(&kq->kq_head, kn, kn_tqe);
  if ((kn->kn_status & KN_DISABLED) == KN_DISABLED) {
   kn->kn_status &= ~KN_QUEUED;
   kq->kq_count--;
   continue;
  }
  if (kn == marker) {
   KQ_FLUX_WAKEUP(kq);
   if (count == maxevents)
    goto retry;
   goto done;
  }
  KASSERT(!kn_in_flux(kn),
      ("knote %p is unexpectedly in flux", kn));

  if ((kn->kn_flags & EV_DROP) == EV_DROP) {
   kn->kn_status &= ~KN_QUEUED;
   kn_enter_flux(kn);
   kq->kq_count--;
   KQ_UNLOCK(kq);




   knote_drop(kn, td);
   KQ_LOCK(kq);
   continue;
  } else if ((kn->kn_flags & EV_ONESHOT) == EV_ONESHOT) {
   kn->kn_status &= ~KN_QUEUED;
   kn_enter_flux(kn);
   kq->kq_count--;
   KQ_UNLOCK(kq);




   *kevp = kn->kn_kevent;
   knote_drop(kn, td);
   KQ_LOCK(kq);
   kn = ((void*)0);
  } else {
   kn->kn_status |= KN_SCAN;
   kn_enter_flux(kn);
   KQ_UNLOCK(kq);
   if ((kn->kn_status & KN_KQUEUE) == KN_KQUEUE)
    KQ_GLOBAL_LOCK(&kq_global, haskqglobal);
   knl = kn_list_lock(kn);
   if (kn->kn_fop->f_event(kn, 0) == 0) {
    KQ_LOCK(kq);
    KQ_GLOBAL_UNLOCK(&kq_global, haskqglobal);
    kn->kn_status &= ~(KN_QUEUED | KN_ACTIVE |
        KN_SCAN);
    kn_leave_flux(kn);
    kq->kq_count--;
    kn_list_unlock(knl);
    influx = 1;
    continue;
   }
   touch = (!kn->kn_fop->f_isfd &&
       kn->kn_fop->f_touch != ((void*)0));
   if (touch)
    kn->kn_fop->f_touch(kn, kevp, EVENT_PROCESS);
   else
    *kevp = kn->kn_kevent;
   KQ_LOCK(kq);
   KQ_GLOBAL_UNLOCK(&kq_global, haskqglobal);
   if (kn->kn_flags & (EV_CLEAR | EV_DISPATCH)) {




    if (touch == 0 && kn->kn_flags & EV_CLEAR) {
     kn->kn_data = 0;
     kn->kn_fflags = 0;
    }
    if (kn->kn_flags & EV_DISPATCH)
     kn->kn_status |= KN_DISABLED;
    kn->kn_status &= ~(KN_QUEUED | KN_ACTIVE);
    kq->kq_count--;
   } else
    TAILQ_INSERT_TAIL(&kq->kq_head, kn, kn_tqe);

   kn->kn_status &= ~KN_SCAN;
   kn_leave_flux(kn);
   kn_list_unlock(knl);
   influx = 1;
  }


  kevp++;
  nkev++;
  count--;

  if (nkev == KQ_NEVENTS) {
   influx = 0;
   KQ_UNLOCK_FLUX(kq);
   error = k_ops->k_copyout(k_ops->arg, keva, nkev);
   nkev = 0;
   kevp = keva;
   KQ_LOCK(kq);
   if (error)
    break;
  }
 }
 TAILQ_REMOVE(&kq->kq_head, marker, kn_tqe);
done:
 KQ_OWNED(kq);
 KQ_UNLOCK_FLUX(kq);
 knote_free(marker);
done_nl:
 KQ_NOTOWNED(kq);
 if (nkev != 0)
  error = k_ops->k_copyout(k_ops->arg, keva, nkev);
 td->td_retval[0] = maxevents - count;
 return (error);
}
