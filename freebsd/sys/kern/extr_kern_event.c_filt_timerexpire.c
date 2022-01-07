
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kq_timer_cb_data {scalar_t__ to; int next; int c; } ;
struct TYPE_2__ {struct kq_timer_cb_data* p_v; } ;
struct knote {int kn_flags; TYPE_1__ kn_ptr; int kn_data; } ;


 int C_ABSOLUTE ;
 int EV_ONESHOT ;
 int KNOTE_ACTIVATE (struct knote*,int ) ;
 int PCPU_GET (int ) ;
 int callout_reset_sbt_on (int *,int ,int ,void (*) (void*),struct knote*,int ,int ) ;
 int cpuid ;

__attribute__((used)) static void
filt_timerexpire(void *knx)
{
 struct knote *kn;
 struct kq_timer_cb_data *kc;

 kn = knx;
 kn->kn_data++;
 KNOTE_ACTIVATE(kn, 0);

 if ((kn->kn_flags & EV_ONESHOT) != 0)
  return;
 kc = kn->kn_ptr.p_v;
 if (kc->to == 0)
  return;
 kc->next += kc->to;
 callout_reset_sbt_on(&kc->c, kc->next, 0, filt_timerexpire, kn,
     PCPU_GET(cpuid), C_ABSOLUTE);
}
