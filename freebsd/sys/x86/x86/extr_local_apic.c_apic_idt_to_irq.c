
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_2__ {int* la_ioint_irqs; } ;


 scalar_t__ APIC_IO_INTS ;
 scalar_t__ APIC_NUM_IOINTS ;
 scalar_t__ IDT_DTRACE_RET ;
 scalar_t__ IDT_SYSCALL ;
 int KASSERT (int,char*) ;
 TYPE_1__* lapics ;

__attribute__((used)) static u_int
apic_idt_to_irq(u_int apic_id, u_int vector)
{
 int irq;

 KASSERT(vector >= APIC_IO_INTS && vector != IDT_SYSCALL &&
     vector <= APIC_IO_INTS + APIC_NUM_IOINTS,
     ("Vector %u does not map to an IRQ line", vector));




 irq = lapics[apic_id].la_ioint_irqs[vector - APIC_IO_INTS];
 if (irq < 0)
  irq = 0;
 return (irq);
}
