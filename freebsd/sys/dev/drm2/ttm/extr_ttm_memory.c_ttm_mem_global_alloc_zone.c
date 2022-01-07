
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ttm_mem_zone {int dummy; } ;
struct ttm_mem_global {int dummy; } ;


 int ENOMEM ;
 int TTM_MEMORY_ALLOC_RETRIES ;
 scalar_t__ ttm_mem_global_reserve (struct ttm_mem_global*,struct ttm_mem_zone*,int,int) ;
 int ttm_shrink (struct ttm_mem_global*,int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ttm_mem_global_alloc_zone(struct ttm_mem_global *glob,
         struct ttm_mem_zone *single_zone,
         uint64_t memory,
         bool no_wait, bool interruptible)
{
 int count = TTM_MEMORY_ALLOC_RETRIES;

 while (unlikely(ttm_mem_global_reserve(glob,
            single_zone,
            memory, 1)
   != 0)) {
  if (no_wait)
   return -ENOMEM;
  if (unlikely(count-- == 0))
   return -ENOMEM;
  ttm_shrink(glob, 0, memory + (memory >> 2) + 16);
 }

 return 0;
}
