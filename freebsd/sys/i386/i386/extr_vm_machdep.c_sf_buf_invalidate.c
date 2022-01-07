
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
struct sf_buf {scalar_t__ kva; int m; } ;


 scalar_t__ PAGE_SIZE ;
 int pmap_invalidate_cache_range (scalar_t__,scalar_t__) ;
 int pmap_qenter (scalar_t__,int *,int) ;

__attribute__((used)) static void
sf_buf_invalidate(struct sf_buf *sf)
{
 vm_page_t m = sf->m;






 pmap_qenter(sf->kva, &m, 1);
 pmap_invalidate_cache_range(sf->kva, sf->kva + PAGE_SIZE);
}
