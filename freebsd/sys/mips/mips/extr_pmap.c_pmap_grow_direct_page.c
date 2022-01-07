
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MIPS_KSEG0_LARGEST_PHYS ;
 int PAGE_SIZE ;
 int vm_page_reclaim_contig (int,int,int ,int ,int ,int ) ;
 int vm_wait (int *) ;

__attribute__((used)) static void
pmap_grow_direct_page(int req)
{




 if (!vm_page_reclaim_contig(req, 1, 0, MIPS_KSEG0_LARGEST_PHYS,
     PAGE_SIZE, 0))
  vm_wait(((void*)0));

}
