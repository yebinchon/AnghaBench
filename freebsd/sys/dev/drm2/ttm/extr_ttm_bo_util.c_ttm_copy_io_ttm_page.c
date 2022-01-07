
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_offset_t ;
typedef int vm_memattr_t ;
struct ttm_tt {int * pages; } ;


 int ENOMEM ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 int VM_PAGE_TO_PHYS (int ) ;
 int memcpy (void*,void*,int ) ;
 void* pmap_mapdev_attr (int ,int ,int ) ;
 int pmap_unmapdev (int ,int ) ;

__attribute__((used)) static int ttm_copy_io_ttm_page(struct ttm_tt *ttm, void *src,
    unsigned long page,
    vm_memattr_t prot)
{
 vm_page_t d = ttm->pages[page];
 void *dst;

 if (!d)
  return -ENOMEM;

 src = (void *)((unsigned long)src + (page << PAGE_SHIFT));


 dst = pmap_mapdev_attr(VM_PAGE_TO_PHYS(d), PAGE_SIZE, prot);
 if (!dst)
  return -ENOMEM;

 memcpy(dst, src, PAGE_SIZE);

 pmap_unmapdev((vm_offset_t)dst, PAGE_SIZE);

 return 0;
}
