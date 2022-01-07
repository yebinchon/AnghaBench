
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_page_t ;
typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int u_int8_t ;


 int MIPS_DIRECT_TO_PHYS (int ) ;
 int PHYS_TO_VM_PAGE (int ) ;
 int dump_drop_page (int ) ;
 int vm_page_free (int ) ;
 int vm_page_unwire_noq (int ) ;

void
uma_small_free(void *mem, vm_size_t size, u_int8_t flags)
{
 vm_page_t m;
 vm_paddr_t pa;

 pa = MIPS_DIRECT_TO_PHYS((vm_offset_t)mem);
 dump_drop_page(pa);
 m = PHYS_TO_VM_PAGE(pa);
 vm_page_unwire_noq(m);
 vm_page_free(m);
}
