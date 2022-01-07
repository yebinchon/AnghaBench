
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ttm_mem_shrink {int (* do_shrink ) (struct ttm_mem_shrink*) ;} ;
struct ttm_mem_global {int lock; struct ttm_mem_shrink* shrink; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (struct ttm_mem_shrink*) ;
 scalar_t__ ttm_zones_above_swap_target (struct ttm_mem_global*,int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ttm_shrink(struct ttm_mem_global *glob, bool from_wq,
         uint64_t extra)
{
 int ret;
 struct ttm_mem_shrink *shrink;

 mtx_lock(&glob->lock);
 if (glob->shrink == ((void*)0))
  goto out;

 while (ttm_zones_above_swap_target(glob, from_wq, extra)) {
  shrink = glob->shrink;
  mtx_unlock(&glob->lock);
  ret = shrink->do_shrink(shrink);
  mtx_lock(&glob->lock);
  if (unlikely(ret != 0))
   goto out;
 }
out:
 mtx_unlock(&glob->lock);
}
