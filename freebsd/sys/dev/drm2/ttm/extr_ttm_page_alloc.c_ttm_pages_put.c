
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;


 int printf (char*,unsigned int) ;
 scalar_t__ set_pages_array_wb (int *,unsigned int) ;
 int ttm_vm_page_free (int ) ;

__attribute__((used)) static void ttm_pages_put(vm_page_t *pages, unsigned npages)
{
 unsigned i;


 if (set_pages_array_wb(pages, npages))
  printf("[TTM] Failed to set %d pages to wb!\n", npages);
 for (i = 0; i < npages; ++i)
  ttm_vm_page_free(pages[i]);
}
