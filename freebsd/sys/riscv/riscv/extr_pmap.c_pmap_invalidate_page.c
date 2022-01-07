
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pmap_t ;


 int sfence_vma_page (int ) ;

__attribute__((used)) static __inline void
pmap_invalidate_page(pmap_t pmap, vm_offset_t va)
{

 sfence_vma_page(va);
}
