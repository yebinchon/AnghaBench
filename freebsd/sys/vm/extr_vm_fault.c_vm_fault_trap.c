
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef int vm_offset_t ;
typedef scalar_t__ vm_map_t ;
struct TYPE_2__ {int p_osrel; } ;


 int BUS_OBJERR ;
 int BUS_OOMERR ;
 int KASSERT (int,char*) ;





 int KERN_SUCCESS ;
 scalar_t__ KTRPOINT (int ,int ) ;
 int KTR_FAULT ;
 int KTR_FAULTEND ;
 int MPASS (int) ;
 int P_OSREL_SIGSEGV ;
 int SEGV_ACCERR ;
 int SEGV_MAPERR ;
 int SIGBUS ;
 int SIGSEGV ;
 int SV_ABI_FREEBSD ;
 int SV_CURPROC_ABI () ;
 int UCODE_PAGEFLT ;
 TYPE_1__* curproc ;
 int curthread ;
 scalar_t__ kernel_map ;
 int ktrfault (int ,int ) ;
 int ktrfaultend (int) ;
 int prot_fault_translation ;
 int trunc_page (int ) ;
 int vm_fault (scalar_t__,int ,int ,int,int *) ;

int
vm_fault_trap(vm_map_t map, vm_offset_t vaddr, vm_prot_t fault_type,
    int fault_flags, int *signo, int *ucode)
{
 int result;

 MPASS(signo == ((void*)0) || ucode != ((void*)0));




 result = vm_fault(map, trunc_page(vaddr), fault_type, fault_flags,
     ((void*)0));
 KASSERT(result == KERN_SUCCESS || result == 132 ||
     result == 131 ||
     result == 128 ||
     result == 129 ||
     result == 130,
     ("Unexpected Mach error %d from vm_fault()", result));




 if (result != KERN_SUCCESS && signo != ((void*)0)) {
  switch (result) {
  case 132:
  case 131:
   *signo = SIGSEGV;
   *ucode = SEGV_MAPERR;
   break;
  case 128:
   *signo = SIGBUS;
   *ucode = BUS_OOMERR;
   break;
  case 130:
   *signo = SIGBUS;
   *ucode = BUS_OBJERR;
   break;
  case 129:
   if (prot_fault_translation == 0) {





    if (SV_CURPROC_ABI() == SV_ABI_FREEBSD &&
        curproc->p_osrel >= P_OSREL_SIGSEGV) {
     *signo = SIGSEGV;
     *ucode = SEGV_ACCERR;
    } else {
     *signo = SIGBUS;
     *ucode = UCODE_PAGEFLT;
    }
   } else if (prot_fault_translation == 1) {

    *signo = SIGBUS;
    *ucode = UCODE_PAGEFLT;
   } else {

    *signo = SIGSEGV;
    *ucode = SEGV_ACCERR;
   }
   break;
  default:
   KASSERT(0, ("Unexpected Mach error %d from vm_fault()",
       result));
   break;
  }
 }
 return (result);
}
