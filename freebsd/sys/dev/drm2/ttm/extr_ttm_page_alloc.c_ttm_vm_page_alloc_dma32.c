
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vm_page_t ;
typedef int vm_memattr_t ;


 int PAGE_SIZE ;
 int * vm_page_alloc_contig (int *,int ,int,int,int ,int,int ,int ,int ) ;
 int vm_page_reclaim_contig (int,int,int ,int,int ,int ) ;
 int vm_wait (int *) ;

__attribute__((used)) static vm_page_t
ttm_vm_page_alloc_dma32(int req, vm_memattr_t memattr)
{
 vm_page_t p;
 int tries;

 for (tries = 0; ; tries++) {
  p = vm_page_alloc_contig(((void*)0), 0, req, 1, 0, 0xffffffff,
      PAGE_SIZE, 0, memattr);
  if (p != ((void*)0) || tries > 2)
   return (p);
  if (!vm_page_reclaim_contig(req, 1, 0, 0xffffffff,
      PAGE_SIZE, 0))
   vm_wait(((void*)0));
 }
}
