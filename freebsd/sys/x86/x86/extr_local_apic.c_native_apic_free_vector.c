
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct thread {int dummy; } ;
struct TYPE_2__ {scalar_t__* la_ioint_irqs; } ;


 scalar_t__ APIC_IO_INTS ;
 scalar_t__ APIC_NUM_IOINTS ;
 scalar_t__ IDT_DTRACE_RET ;
 scalar_t__ IDT_SYSCALL ;
 scalar_t__ IRQ_FREE ;
 int KASSERT (int,char*) ;
 int apic_cpuid (scalar_t__) ;
 struct thread* curthread ;
 int icu_lock ;
 TYPE_1__* lapics ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 scalar_t__ num_io_irqs ;
 int panic (char*) ;
 int rebooting ;
 int sched_bind (struct thread*,int ) ;
 scalar_t__ sched_is_bound (struct thread*) ;
 int sched_unbind (struct thread*) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

__attribute__((used)) static void
native_apic_free_vector(u_int apic_id, u_int vector, u_int irq)
{
 struct thread *td;

 KASSERT(vector >= APIC_IO_INTS && vector != IDT_SYSCALL &&
     vector <= APIC_IO_INTS + APIC_NUM_IOINTS,
     ("Vector %u does not map to an IRQ line", vector));
 KASSERT(irq < num_io_irqs, ("Invalid IRQ %u", irq));
 KASSERT(lapics[apic_id].la_ioint_irqs[vector - APIC_IO_INTS] ==
     irq, ("IRQ mismatch"));
 td = curthread;
 if (!rebooting) {
  thread_lock(td);
  if (sched_is_bound(td))
   panic("apic_free_vector: Thread already bound.\n");
  sched_bind(td, apic_cpuid(apic_id));
  thread_unlock(td);
 }
 mtx_lock_spin(&icu_lock);
 lapics[apic_id].la_ioint_irqs[vector - APIC_IO_INTS] = IRQ_FREE;
 mtx_unlock_spin(&icu_lock);
 if (!rebooting) {
  thread_lock(td);
  sched_unbind(td);
  thread_unlock(td);
 }
}
