
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;

__attribute__((used)) static int ttm_copy_io_page(void *dst, void *src, unsigned long page)
{
 uint32_t *dstP =
     (uint32_t *) ((unsigned long)dst + (page << PAGE_SHIFT));
 uint32_t *srcP =
     (uint32_t *) ((unsigned long)src + (page << PAGE_SHIFT));

 int i;
 for (i = 0; i < PAGE_SIZE / sizeof(uint32_t); ++i)

  *dstP++ = *srcP++;
 return 0;
}
