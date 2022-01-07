
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_offset_t ;
typedef int mmu_t ;


 scalar_t__ hw_direct_map ;
 int moea64_copy_pages_dmap (int ,int *,int ,int *,int ,int) ;
 int moea64_copy_pages_nodmap (int ,int *,int ,int *,int ,int) ;

void
moea64_copy_pages(mmu_t mmu, vm_page_t *ma, vm_offset_t a_offset,
    vm_page_t *mb, vm_offset_t b_offset, int xfersize)
{

 if (hw_direct_map) {
  moea64_copy_pages_dmap(mmu, ma, a_offset, mb, b_offset,
      xfersize);
 } else {
  moea64_copy_pages_nodmap(mmu, ma, a_offset, mb, b_offset,
      xfersize);
 }
}
