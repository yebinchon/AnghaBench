
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_page_t ;
struct pglist {int dummy; } ;
typedef enum ttm_caching_state { ____Placeholder_ttm_caching_state } ttm_caching_state ;
struct TYPE_2__ {int q; } ;


 int ENOMEM ;
 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 int PAGE_SIZE ;
 int PageHighMem (scalar_t__) ;
 int TAILQ_INSERT_HEAD (struct pglist*,scalar_t__,int ) ;
 int free (scalar_t__*,int ) ;
 scalar_t__* malloc (unsigned int,int ,int) ;
 unsigned int min (unsigned int,unsigned int) ;
 TYPE_1__ plinks ;
 int printf (char*,unsigned int) ;
 int ttm_handle_caching_state_failure (struct pglist*,int,int,scalar_t__*,unsigned int) ;
 int ttm_set_pages_caching (scalar_t__*,int,unsigned int) ;
 scalar_t__ ttm_vm_page_alloc (int,int) ;

__attribute__((used)) static int ttm_alloc_new_pages(struct pglist *pages, int ttm_alloc_flags,
  int ttm_flags, enum ttm_caching_state cstate, unsigned count)
{
 vm_page_t *caching_array;
 vm_page_t p;
 int r = 0;
 unsigned i, cpages;
 unsigned max_cpages = min(count,
   (unsigned)(PAGE_SIZE/sizeof(vm_page_t)));


 caching_array = malloc(max_cpages * sizeof(vm_page_t), M_TEMP,
     M_WAITOK | M_ZERO);

 for (i = 0, cpages = 0; i < count; ++i) {
  p = ttm_vm_page_alloc(ttm_alloc_flags, cstate);
  if (!p) {
   printf("[TTM] Unable to get page %u\n", i);



   if (cpages) {
    r = ttm_set_pages_caching(caching_array,
         cstate, cpages);
    if (r)
     ttm_handle_caching_state_failure(pages,
      ttm_flags, cstate,
      caching_array, cpages);
   }
   r = -ENOMEM;
   goto out;
  }







  {
   caching_array[cpages++] = p;
   if (cpages == max_cpages) {

    r = ttm_set_pages_caching(caching_array,
      cstate, cpages);
    if (r) {
     ttm_handle_caching_state_failure(pages,
      ttm_flags, cstate,
      caching_array, cpages);
     goto out;
    }
    cpages = 0;
   }
  }

  TAILQ_INSERT_HEAD(pages, p, plinks.q);
 }

 if (cpages) {
  r = ttm_set_pages_caching(caching_array, cstate, cpages);
  if (r)
   ttm_handle_caching_state_failure(pages,
     ttm_flags, cstate,
     caching_array, cpages);
 }
out:
 free(caching_array, M_TEMP);

 return r;
}
