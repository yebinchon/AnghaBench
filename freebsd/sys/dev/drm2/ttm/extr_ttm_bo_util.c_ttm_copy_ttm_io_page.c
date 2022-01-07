
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

__attribute__((used)) static int ttm_copy_ttm_io_page(struct ttm_tt *ttm, void *dst,
    unsigned long page,
    vm_memattr_t prot)
{
 vm_page_t s = ttm->pages[page];
 void *src;

 if (!s)
  return -ENOMEM;

 dst = (void *)((unsigned long)dst + (page << PAGE_SHIFT));
 src = pmap_mapdev_attr(VM_PAGE_TO_PHYS(s), PAGE_SIZE, prot);
 if (!src)
  return -ENOMEM;

 memcpy(dst, src, PAGE_SIZE);

 pmap_unmapdev((vm_offset_t)src, PAGE_SIZE);

 return 0;
}
