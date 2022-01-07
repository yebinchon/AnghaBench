
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int dummy; } ;
struct thread {int td_intr_nesting_level; struct trapframe* td_intr_frame; } ;


 int critical_enter () ;
 int critical_exit () ;
 struct thread* curthread ;
 int hardclockintr () ;

__attribute__((used)) static void
cpu_ipi_hardclock(struct trapframe *tf)
{
 struct trapframe *oldframe;
 struct thread *td;

 critical_enter();
 td = curthread;
 td->td_intr_nesting_level++;
 oldframe = td->td_intr_frame;
 td->td_intr_frame = tf;
 hardclockintr();
 td->td_intr_frame = oldframe;
 td->td_intr_nesting_level--;
 critical_exit();
}
