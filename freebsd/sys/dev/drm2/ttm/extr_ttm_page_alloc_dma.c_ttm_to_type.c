
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ttm_caching_state { ____Placeholder_ttm_caching_state } ttm_caching_state ;
typedef enum pool_type { ____Placeholder_pool_type } pool_type ;


 int IS_CACHED ;
 int IS_DMA32 ;
 int IS_UC ;
 int IS_UNDEFINED ;
 int IS_WC ;
 int TTM_PAGE_FLAG_DMA32 ;
 int tt_cached ;
 int tt_uncached ;

__attribute__((used)) static enum pool_type ttm_to_type(int flags, enum ttm_caching_state cstate)
{
 enum pool_type type = IS_UNDEFINED;

 if (flags & TTM_PAGE_FLAG_DMA32)
  type |= IS_DMA32;
 if (cstate == tt_cached)
  type |= IS_CACHED;
 else if (cstate == tt_uncached)
  type |= IS_UC;
 else
  type |= IS_WC;

 return type;
}
