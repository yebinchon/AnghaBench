
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int mmu_t ;


 scalar_t__ VM_MAXUSER_ADDRESS ;
 scalar_t__ trunc_page (int ) ;

__attribute__((used)) static int
mmu_booke_decode_kernel_ptr(mmu_t mmu, vm_offset_t addr, int *is_user,
    vm_offset_t *decoded_addr)
{

 if (trunc_page(addr) <= VM_MAXUSER_ADDRESS)
  *is_user = 1;
 else
  *is_user = 0;

 *decoded_addr = addr;
 return (0);
}
