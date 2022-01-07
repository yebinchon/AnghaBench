
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_6__ {scalar_t__ lvt_active; } ;
struct TYPE_5__ {int la_present; int la_id; int * la_ioint_irqs; TYPE_3__* la_elvts; TYPE_1__* la_lvts; } ;
struct TYPE_4__ {scalar_t__ lvt_active; } ;


 int APIC_ELVT_MAX ;
 size_t APIC_IO_INTS ;
 int APIC_LVT_MAX ;
 int APIC_NUM_IOINTS ;
 size_t APIC_TIMER_INT ;
 size_t IDT_DTRACE_RET ;
 size_t IDT_EVTCHN ;
 size_t IDT_SYSCALL ;
 int IRQ_DTRACE_RET ;
 int IRQ_EVTCHN ;
 int IRQ_FREE ;
 int IRQ_SYSCALL ;
 int IRQ_TIMER ;
 int KASSERT (int,char*) ;
 int cpu_add (int,int) ;
 TYPE_3__* elvts ;
 TYPE_2__* lapics ;
 TYPE_1__* lvts ;
 int max_apic_id ;
 int panic (char*) ;
 int printf (char*,int) ;

__attribute__((used)) static void
native_lapic_create(u_int apic_id, int boot_cpu)
{
 int i;

 if (apic_id > max_apic_id) {
  printf("APIC: Ignoring local APIC with ID %d\n", apic_id);
  if (boot_cpu)
   panic("Can't ignore BSP");
  return;
 }
 KASSERT(!lapics[apic_id].la_present, ("duplicate local APIC %u",
     apic_id));





 lapics[apic_id].la_present = 1;
 lapics[apic_id].la_id = apic_id;
 for (i = 0; i <= APIC_LVT_MAX; i++) {
  lapics[apic_id].la_lvts[i] = lvts[i];
  lapics[apic_id].la_lvts[i].lvt_active = 0;
 }
 for (i = 0; i <= APIC_ELVT_MAX; i++) {
  lapics[apic_id].la_elvts[i] = elvts[i];
  lapics[apic_id].la_elvts[i].lvt_active = 0;
 }
 for (i = 0; i <= APIC_NUM_IOINTS; i++)
     lapics[apic_id].la_ioint_irqs[i] = IRQ_FREE;
 lapics[apic_id].la_ioint_irqs[IDT_SYSCALL - APIC_IO_INTS] = IRQ_SYSCALL;
 lapics[apic_id].la_ioint_irqs[APIC_TIMER_INT - APIC_IO_INTS] =
     IRQ_TIMER;
}
