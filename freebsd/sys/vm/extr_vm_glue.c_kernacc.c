
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ boolean_t ;


 int FALSE ;
 int KASSERT (int,char*) ;
 scalar_t__ TRUE ;
 int VM_PROT_ALL ;
 int kernel_map ;
 scalar_t__ round_page (scalar_t__) ;
 scalar_t__ trunc_page (scalar_t__) ;
 scalar_t__ vm_map_check_protection (int ,scalar_t__,scalar_t__,int) ;
 int vm_map_lock_read (int ) ;
 scalar_t__ vm_map_max (int ) ;
 int vm_map_unlock_read (int ) ;

int
kernacc(void *addr, int len, int rw)
{
 boolean_t rv;
 vm_offset_t saddr, eaddr;
 vm_prot_t prot;

 KASSERT((rw & ~VM_PROT_ALL) == 0,
     ("illegal ``rw'' argument to kernacc (%x)\n", rw));

 if ((vm_offset_t)addr + len > vm_map_max(kernel_map) ||
     (vm_offset_t)addr + len < (vm_offset_t)addr)
  return (FALSE);

 prot = rw;
 saddr = trunc_page((vm_offset_t)addr);
 eaddr = round_page((vm_offset_t)addr + len);
 vm_map_lock_read(kernel_map);
 rv = vm_map_check_protection(kernel_map, saddr, eaddr, prot);
 vm_map_unlock_read(kernel_map);
 return (rv == TRUE);
}
