
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef enum ttm_caching_state { ____Placeholder_ttm_caching_state } ttm_caching_state ;


 int VM_MEMATTR_UNCACHEABLE ;
 int VM_MEMATTR_WRITE_BACK ;
 int VM_MEMATTR_WRITE_COMBINING ;
 int pmap_page_set_memattr (int ,int ) ;
 int tt_cached ;
 int tt_uncached ;
 int tt_wc ;

__attribute__((used)) static inline int ttm_tt_set_page_caching(vm_page_t p,
       enum ttm_caching_state c_old,
       enum ttm_caching_state c_new)
{
 if (c_new == tt_wc)
  pmap_page_set_memattr(p, VM_MEMATTR_WRITE_COMBINING);
 else if (c_new == tt_uncached)
  pmap_page_set_memattr(p, VM_MEMATTR_UNCACHEABLE);

 return (0);
}
