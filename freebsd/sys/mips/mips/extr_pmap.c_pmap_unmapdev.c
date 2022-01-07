
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;


 int MIPS_KSEG1_END ;
 int MIPS_KSEG1_START ;
 int PAGE_MASK ;
 int PAGE_SIZE ;
 int kva_free (int,int ) ;
 int roundup (int ,int ) ;
 int trunc_page (int) ;

void
pmap_unmapdev(vm_offset_t va, vm_size_t size)
{

 vm_offset_t base, offset;


 if (va >= MIPS_KSEG1_START && va <= MIPS_KSEG1_END)
  return;

 base = trunc_page(va);
 offset = va & PAGE_MASK;
 size = roundup(size + offset, PAGE_SIZE);
 kva_free(base, size);

}
