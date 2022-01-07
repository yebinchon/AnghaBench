
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_oncpu; } ;
struct stack {scalar_t__ depth; } ;


 int EAGAIN ;
 int EOPNOTSUPP ;
 int IPI_TRACE ;
 int KASSERT (int ,char*) ;
 int MA_OWNED ;
 int MPASS (int ) ;
 int TD_IS_RUNNING (struct thread*) ;
 int THREAD_LOCK_ASSERT (struct thread*,int ) ;
 scalar_t__ atomic_load_acq_ptr (long*) ;
 int cpu_spinwait () ;
 struct thread* curthread ;
 int ipi_cpu (int ,int ) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int nmi_lock ;
 struct thread* nmi_pending ;
 struct stack* nmi_stack ;
 int stack_save (struct stack*) ;

int
stack_save_td_running(struct stack *st, struct thread *td)
{
 return (EOPNOTSUPP);

}
