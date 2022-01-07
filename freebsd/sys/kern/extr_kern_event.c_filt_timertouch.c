
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct kqueue {int dummy; } ;
struct kq_timer_cb_data {int c; } ;
struct kevent {int flags; int data; int fflags; } ;
struct TYPE_2__ {struct kq_timer_cb_data* p_v; } ;
struct knote {int kn_status; int kn_data; int kn_flags; int kn_fflags; struct kevent kn_kevent; int kn_sdata; int kn_sfflags; struct kqueue* kn_kq; TYPE_1__ kn_ptr; } ;
typedef int sbintime_t ;




 int EV_ADD ;
 int EV_CLEAR ;
 int EV_ERROR ;
 int KN_ACTIVE ;
 int KN_QUEUED ;
 int KQ_LOCK (struct kqueue*) ;
 int KQ_UNLOCK (struct kqueue*) ;
 int callout_drain (int *) ;
 int filt_timerstart (struct knote*,int ) ;
 int filt_timervalidate (struct knote*,int *) ;
 int knote_dequeue (struct knote*) ;
 int panic (char*,int) ;

__attribute__((used)) static void
filt_timertouch(struct knote *kn, struct kevent *kev, u_long type)
{
 struct kq_timer_cb_data *kc;
 struct kqueue *kq;
 sbintime_t to;
 int error;

 switch (type) {
 case 128:

  if (kev->flags & EV_ADD) {
   kc = kn->kn_ptr.p_v;


   callout_drain(&kc->c);
   kq = kn->kn_kq;
   KQ_LOCK(kq);
   if (kn->kn_status & KN_QUEUED)
    knote_dequeue(kn);

   kn->kn_status &= ~KN_ACTIVE;
   kn->kn_data = 0;
   KQ_UNLOCK(kq);


   kn->kn_sfflags = kev->fflags;
   kn->kn_sdata = kev->data;
   error = filt_timervalidate(kn, &to);
   if (error != 0) {
      kn->kn_flags |= EV_ERROR;
    kn->kn_data = error;
   } else
      filt_timerstart(kn, to);
  }
  break;

        case 129:
  *kev = kn->kn_kevent;
  if (kn->kn_flags & EV_CLEAR) {
   kn->kn_data = 0;
   kn->kn_fflags = 0;
  }
  break;

 default:
  panic("filt_timertouch() - invalid type (%ld)", type);
  break;
 }
}
