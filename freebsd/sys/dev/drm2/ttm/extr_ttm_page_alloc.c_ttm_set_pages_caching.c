
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef enum ttm_caching_state { ____Placeholder_ttm_caching_state } ttm_caching_state ;


 int printf (char*,unsigned int) ;
 int set_pages_array_uc (int *,unsigned int) ;
 int set_pages_array_wc (int *,unsigned int) ;



__attribute__((used)) static int ttm_set_pages_caching(vm_page_t *pages,
  enum ttm_caching_state cstate, unsigned cpages)
{
 int r = 0;

 switch (cstate) {
 case 129:
  r = set_pages_array_uc(pages, cpages);
  if (r)
   printf("[TTM] Failed to set %d pages to uc!\n", cpages);
  break;
 case 128:
  r = set_pages_array_wc(pages, cpages);
  if (r)
   printf("[TTM] Failed to set %d pages to wc!\n", cpages);
  break;
 default:
  break;
 }
 return r;
}
