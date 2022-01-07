
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct trapframe {int dummy; } ;
struct thread {int td_intr_nesting_level; struct trapframe* td_intr_frame; } ;
struct TYPE_3__ {int et_arg; int (* et_event_cb ) (TYPE_1__*,int ) ;scalar_t__ et_active; } ;


 int critical_enter () ;
 int critical_exit () ;
 struct thread* curthread ;
 int stub1 (TYPE_1__*,int ) ;
 TYPE_1__ tick_et ;

__attribute__((used)) static inline void
tick_process(struct trapframe *tf)
{
 struct trapframe *oldframe;
 struct thread *td;

 td = curthread;
 td->td_intr_nesting_level++;
 critical_enter();
 if (tick_et.et_active) {
  oldframe = td->td_intr_frame;
  td->td_intr_frame = tf;
  tick_et.et_event_cb(&tick_et, tick_et.et_arg);
  td->td_intr_frame = oldframe;
 }
 td->td_intr_nesting_level--;
 critical_exit();
}
