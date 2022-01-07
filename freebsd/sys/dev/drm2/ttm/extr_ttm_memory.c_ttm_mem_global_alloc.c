
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ttm_mem_global {int dummy; } ;


 int ttm_mem_global_alloc_zone (struct ttm_mem_global*,int *,int ,int,int) ;

int ttm_mem_global_alloc(struct ttm_mem_global *glob, uint64_t memory,
    bool no_wait, bool interruptible)
{





 return ttm_mem_global_alloc_zone(glob, ((void*)0), memory, no_wait,
      interruptible);
}
