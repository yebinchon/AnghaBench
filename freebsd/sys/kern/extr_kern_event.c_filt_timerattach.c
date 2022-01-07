
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kq_timer_cb_data {int c; } ;
struct TYPE_2__ {struct kq_timer_cb_data* p_v; } ;
struct knote {int kn_sfflags; TYPE_1__ kn_ptr; int kn_status; int kn_flags; } ;
typedef int sbintime_t ;


 int ENOMEM ;
 int EV_CLEAR ;
 int KN_DETACHED ;
 int M_KQUEUE ;
 int M_WAITOK ;
 int NOTE_ABSTIME ;
 int atomic_cmpset_int (unsigned int*,unsigned int,unsigned int) ;
 int callout_init (int *,int) ;
 int filt_timerstart (struct knote*,int ) ;
 int filt_timervalidate (struct knote*,int *) ;
 unsigned int kq_calloutmax ;
 unsigned int kq_ncallouts ;
 struct kq_timer_cb_data* malloc (int,int ,int ) ;

__attribute__((used)) static int
filt_timerattach(struct knote *kn)
{
 struct kq_timer_cb_data *kc;
 sbintime_t to;
 unsigned int ncallouts;
 int error;

 error = filt_timervalidate(kn, &to);
 if (error != 0)
  return (error);

 do {
  ncallouts = kq_ncallouts;
  if (ncallouts >= kq_calloutmax)
   return (ENOMEM);
 } while (!atomic_cmpset_int(&kq_ncallouts, ncallouts, ncallouts + 1));

 if ((kn->kn_sfflags & NOTE_ABSTIME) == 0)
  kn->kn_flags |= EV_CLEAR;
 kn->kn_status &= ~KN_DETACHED;
 kn->kn_ptr.p_v = kc = malloc(sizeof(*kc), M_KQUEUE, M_WAITOK);
 callout_init(&kc->c, 1);
 filt_timerstart(kn, to);

 return (0);
}
