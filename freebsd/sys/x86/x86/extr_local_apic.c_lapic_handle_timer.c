
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct trapframe {int dummy; } ;
struct thread {int td_intr_nesting_level; struct trapframe* td_intr_frame; } ;
struct lapic {int * la_timer_count; } ;
struct TYPE_3__ {int et_arg; int (* et_event_cb ) (TYPE_1__*,int ) ;scalar_t__ et_active; } ;


 scalar_t__ CPU_ISSET (size_t,int *) ;
 size_t PCPU_GET (int ) ;
 int apic_id ;
 int cpuid ;
 int critical_enter () ;
 int critical_exit () ;
 struct thread* curthread ;
 int hlt_cpus_mask ;
 int lapic_eoi () ;
 TYPE_1__ lapic_et ;
 struct lapic* lapics ;
 int stub1 (TYPE_1__*,int ) ;

void
lapic_handle_timer(struct trapframe *frame)
{
 struct lapic *la;
 struct trapframe *oldframe;
 struct thread *td;


 lapic_eoi();
 la = &lapics[PCPU_GET(apic_id)];
 (*la->la_timer_count)++;
 critical_enter();
 if (lapic_et.et_active) {
  td = curthread;
  td->td_intr_nesting_level++;
  oldframe = td->td_intr_frame;
  td->td_intr_frame = frame;
  lapic_et.et_event_cb(&lapic_et, lapic_et.et_arg);
  td->td_intr_frame = oldframe;
  td->td_intr_nesting_level--;
 }
 critical_exit();
}
