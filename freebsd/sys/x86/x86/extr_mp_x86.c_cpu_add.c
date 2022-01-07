
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_2__ {int cpu_present; int cpu_bsp; } ;


 int KASSERT (int,char*) ;
 int boot_cpu_id ;
 scalar_t__ bootverbose ;
 TYPE_1__* cpu_info ;
 size_t max_apic_id ;
 int panic (char*,size_t) ;
 int printf (char*,size_t,char*) ;

void
cpu_add(u_int apic_id, char boot_cpu)
{

 if (apic_id > max_apic_id) {
  panic("SMP: APIC ID %d too high", apic_id);
  return;
 }
 KASSERT(cpu_info[apic_id].cpu_present == 0, ("CPU %u added twice",
     apic_id));
 cpu_info[apic_id].cpu_present = 1;
 if (boot_cpu) {
  KASSERT(boot_cpu_id == -1,
      ("CPU %u claims to be BSP, but CPU %u already is", apic_id,
      boot_cpu_id));
  boot_cpu_id = apic_id;
  cpu_info[apic_id].cpu_bsp = 1;
 }
 if (bootverbose)
  printf("SMP: Added CPU %u (%s)\n", apic_id, boot_cpu ? "BSP" :
      "AP");
}
