
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t vm_size_t ;
typedef size_t vm_offset_t ;
struct thread {TYPE_2__* td_proc; } ;
struct TYPE_4__ {TYPE_1__* p_vmspace; } ;
struct TYPE_3__ {int vm_map; } ;


 int EACCES ;
 int EINVAL ;
 int ENOMEM ;
 int FALSE ;



 size_t PAGE_MASK ;
 int PROT_EXTRACT (int) ;
 int PROT_MAX (int) ;
 int PROT_MAX_EXTRACT (int) ;
 int SV_ILP32 ;
 scalar_t__ SV_PROC_FLAG (TYPE_2__*,int ) ;
 int TRUE ;
 int _PROT_ALL ;
 scalar_t__ round_page (size_t) ;
 int vm_map_protect (int *,size_t,size_t,int,int ) ;

int
kern_mprotect(struct thread *td, uintptr_t addr0, size_t size, int prot)
{
 vm_offset_t addr;
 vm_size_t pageoff;
 int vm_error, max_prot;

 addr = addr0;
 if ((prot & ~(_PROT_ALL | PROT_MAX(_PROT_ALL))) != 0)
  return (EINVAL);
 max_prot = PROT_MAX_EXTRACT(prot);
 prot = PROT_EXTRACT(prot);
 pageoff = (addr & PAGE_MASK);
 addr -= pageoff;
 size += pageoff;
 size = (vm_size_t) round_page(size);






 if (addr + size < addr)
  return (EINVAL);

 vm_error = 128;
 if (max_prot != 0) {
  if ((max_prot & prot) != prot)
   return (EINVAL);
  vm_error = vm_map_protect(&td->td_proc->p_vmspace->vm_map,
      addr, addr + size, max_prot, TRUE);
 }
 if (vm_error == 128)
  vm_error = vm_map_protect(&td->td_proc->p_vmspace->vm_map,
      addr, addr + size, prot, FALSE);

 switch (vm_error) {
 case 128:
  return (0);
 case 130:
  return (EACCES);
 case 129:
  return (ENOMEM);
 }
 return (EINVAL);
}
