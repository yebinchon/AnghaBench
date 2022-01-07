
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef scalar_t__ vm_offset_t ;
typedef int * vm_map_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_4__ {TYPE_1__* p_vmspace; } ;
struct TYPE_3__ {int vm_map; } ;


 int FALSE ;
 int KASSERT (int,char*) ;
 scalar_t__ TRUE ;
 int VM_PROT_ALL ;
 TYPE_2__* curproc ;
 int round_page (scalar_t__) ;
 int trunc_page (scalar_t__) ;
 scalar_t__ vm_map_check_protection (int *,int ,int ,int) ;
 int vm_map_lock_read (int *) ;
 scalar_t__ vm_map_max (int *) ;
 int vm_map_unlock_read (int *) ;

int
useracc(void *addr, int len, int rw)
{
 boolean_t rv;
 vm_prot_t prot;
 vm_map_t map;

 KASSERT((rw & ~VM_PROT_ALL) == 0,
     ("illegal ``rw'' argument to useracc (%x)\n", rw));
 prot = rw;
 map = &curproc->p_vmspace->vm_map;
 if ((vm_offset_t)addr + len > vm_map_max(map) ||
     (vm_offset_t)addr + len < (vm_offset_t)addr) {
  return (FALSE);
 }
 vm_map_lock_read(map);
 rv = vm_map_check_protection(map, trunc_page((vm_offset_t)addr),
     round_page((vm_offset_t)addr + len), prot);
 vm_map_unlock_read(map);
 return (rv == TRUE);
}
