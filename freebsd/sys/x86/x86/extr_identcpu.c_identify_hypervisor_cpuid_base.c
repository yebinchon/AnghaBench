
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_3__ {scalar_t__ vm_guest; int vm_cpuid; } ;


 scalar_t__ VM_GUEST_VM ;
 int do_cpuid (int,int*) ;
 int hv_base ;
 int hv_high ;
 char* hv_vendor ;
 int nitems (TYPE_1__*) ;
 scalar_t__ strncmp (char const*,int ,int) ;
 TYPE_1__* vm_cpuids ;
 scalar_t__ vm_guest ;

__attribute__((used)) static void
identify_hypervisor_cpuid_base(void)
{
 u_int leaf, regs[4];
 int i;
 for (leaf = 0x40000000; leaf < 0x40010000; leaf += 0x100) {
  do_cpuid(leaf, regs);
  if (regs[0] == 0 && regs[1] == 0x4b4d564b &&
      regs[2] == 0x564b4d56 && regs[3] == 0x0000004d)
   regs[0] = leaf + 1;

  if (regs[0] >= leaf) {
   for (i = 0; i < nitems(vm_cpuids); i++)
    if (strncmp((const char *)&regs[1],
        vm_cpuids[i].vm_cpuid, 12) == 0) {
     vm_guest = vm_cpuids[i].vm_guest;
     break;
    }






   if (vm_guest != VM_GUEST_VM || leaf == 0x40000000) {
    hv_base = leaf;
    hv_high = regs[0];
    ((u_int *)&hv_vendor)[0] = regs[1];
    ((u_int *)&hv_vendor)[1] = regs[2];
    ((u_int *)&hv_vendor)[2] = regs[3];
    hv_vendor[12] = '\0';





    if (vm_guest != VM_GUEST_VM)
     return;
   }
  }
 }
}
