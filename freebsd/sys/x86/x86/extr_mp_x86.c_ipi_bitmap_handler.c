
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct trapframe {int dummy; } ;
struct thread {int td_intr_nesting_level; struct trapframe* td_intr_frame; } ;
struct TYPE_2__ {int pc_ipi_bitmap; } ;


 int IPI_AST ;
 int IPI_HARDCLOCK ;
 int IPI_PREEMPT ;
 int PCPU_GET (int ) ;
 int atomic_readandclear_int (int *) ;
 int cpuid ;
 TYPE_1__** cpuid_to_pcpu ;
 int critical_enter () ;
 int critical_exit () ;
 struct thread* curthread ;
 int hardclockintr () ;
 int ** ipi_ast_counts ;
 int ** ipi_hardclock_counts ;
 int ** ipi_preempt_counts ;
 int sched_preempt (struct thread*) ;

void
ipi_bitmap_handler(struct trapframe frame)
{
 struct trapframe *oldframe;
 struct thread *td;
 int cpu = PCPU_GET(cpuid);
 u_int ipi_bitmap;

 critical_enter();
 td = curthread;
 td->td_intr_nesting_level++;
 oldframe = td->td_intr_frame;
 td->td_intr_frame = &frame;
 ipi_bitmap = atomic_readandclear_int(&cpuid_to_pcpu[cpu]->pc_ipi_bitmap);
 if (ipi_bitmap & (1 << IPI_PREEMPT)) {



  sched_preempt(td);
 }
 if (ipi_bitmap & (1 << IPI_AST)) {




 }
 if (ipi_bitmap & (1 << IPI_HARDCLOCK)) {



  hardclockintr();
 }
 td->td_intr_frame = oldframe;
 td->td_intr_nesting_level--;
 critical_exit();
}
