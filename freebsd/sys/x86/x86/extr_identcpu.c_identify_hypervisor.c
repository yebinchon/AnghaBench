
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_4__ {scalar_t__ vm_guest; int vm_pname; int vm_bname; } ;


 int CPUID2_HV ;
 int VMW_HVCMD_GETVERSION ;
 scalar_t__ VMW_HVMAGIC ;
 scalar_t__ VM_GUEST_VM ;
 scalar_t__ VM_GUEST_VMWARE ;
 int cpu_feature2 ;
 int freeenv (char*) ;
 char* hv_vendor ;
 int identify_hypervisor_cpuid_base () ;
 char* kern_getenv (char*) ;
 int nitems (TYPE_1__*) ;
 scalar_t__ strcmp (char*,int ) ;
 scalar_t__ strncmp (char*,char*,int) ;
 TYPE_1__* vm_bnames ;
 scalar_t__ vm_guest ;
 TYPE_1__* vm_pnames ;
 int vmware_hvcall (int ,scalar_t__*) ;

void
identify_hypervisor(void)
{
 u_int regs[4];
 char *p;
 int i;




 if (cpu_feature2 & CPUID2_HV) {
  vm_guest = VM_GUEST_VM;
  identify_hypervisor_cpuid_base();


  if (*hv_vendor != '\0')
   return;
 }




 p = kern_getenv("smbios.system.serial");
 if (p != ((void*)0)) {
  if (strncmp(p, "VMware-", 7) == 0 || strncmp(p, "VMW", 3) == 0) {
   vmware_hvcall(VMW_HVCMD_GETVERSION, regs);
   if (regs[1] == VMW_HVMAGIC) {
    vm_guest = VM_GUEST_VMWARE;
    freeenv(p);
    return;
   }
  }
  freeenv(p);
 }





 p = kern_getenv("smbios.bios.vendor");
 if (p != ((void*)0)) {
  for (i = 0; i < nitems(vm_bnames); i++)
   if (strcmp(p, vm_bnames[i].vm_bname) == 0) {
    vm_guest = vm_bnames[i].vm_guest;

    if (vm_guest != VM_GUEST_VM) {
     freeenv(p);
     return;
    }




    break;
   }
  freeenv(p);
 }
 p = kern_getenv("smbios.system.product");
 if (p != ((void*)0)) {
  for (i = 0; i < nitems(vm_pnames); i++)
   if (strcmp(p, vm_pnames[i].vm_pname) == 0) {
    vm_guest = vm_pnames[i].vm_guest;
    freeenv(p);
    return;
   }
  freeenv(p);
 }
}
