
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_2__ {scalar_t__ cpu_hyperthread; scalar_t__ cpu_disabled; scalar_t__ cpu_bsp; } ;


 scalar_t__ MAXCPU ;
 scalar_t__* cpu_apic_ids ;
 TYPE_1__* cpu_info ;
 int hyperthreading_intr_allowed ;
 int intr_add_cpu (scalar_t__) ;

void
set_interrupt_apic_ids(void)
{
 u_int i, apic_id;

 for (i = 0; i < MAXCPU; i++) {
  apic_id = cpu_apic_ids[i];
  if (apic_id == -1)
   continue;
  if (cpu_info[apic_id].cpu_bsp)
   continue;
  if (cpu_info[apic_id].cpu_disabled)
   continue;


  if (cpu_info[apic_id].cpu_hyperthread &&
      !hyperthreading_intr_allowed)
   continue;

  intr_add_cpu(i);
 }
}
