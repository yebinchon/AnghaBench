
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_2__ {scalar_t__* la_ioint_irqs; } ;


 scalar_t__ APIC_IO_INTS ;
 scalar_t__ APIC_NUM_IOINTS ;
 scalar_t__ IRQ_FREE ;
 int KASSERT (int,char*) ;
 int icu_lock ;
 TYPE_1__* lapics ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 scalar_t__ num_io_irqs ;

__attribute__((used)) static u_int
native_apic_alloc_vector(u_int apic_id, u_int irq)
{
 u_int vector;

 KASSERT(irq < num_io_irqs, ("Invalid IRQ %u", irq));





 mtx_lock_spin(&icu_lock);
 for (vector = 0; vector < APIC_NUM_IOINTS; vector++) {
  if (lapics[apic_id].la_ioint_irqs[vector] != IRQ_FREE)
   continue;
  lapics[apic_id].la_ioint_irqs[vector] = irq;
  mtx_unlock_spin(&icu_lock);
  return (vector + APIC_IO_INTS);
 }
 mtx_unlock_spin(&icu_lock);
 return (0);
}
