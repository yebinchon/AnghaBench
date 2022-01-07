
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int64_t ;
struct ttm_mem_zone {char* name; scalar_t__ max_mem; } ;
struct ttm_mem_global {int num_zones; TYPE_1__* zone_kernel; struct ttm_mem_zone** zones; int kobj_ref; int work; int swap_queue; int lock; } ;
struct TYPE_2__ {int max_mem; } ;


 int MTX_DEF ;
 int M_WAITOK ;
 int PAGE_SIZE ;
 int PVM ;
 int TASK_INIT (int *,int ,int ,struct ttm_mem_global*) ;
 int mtx_init (int *,char*,int *,int ) ;
 int physmem ;
 int printf (char*,char*,unsigned long long) ;
 int refcount_init (int *,int) ;
 int taskqueue_create (char*,int ,int ,int *) ;
 int taskqueue_start_threads (int *,int,int ,char*) ;
 int taskqueue_thread_enqueue ;
 int ttm_dma_page_alloc_init (struct ttm_mem_global*,int) ;
 int ttm_mem_global_release (struct ttm_mem_global*) ;
 int ttm_mem_init_dma32_zone (struct ttm_mem_global*,int) ;
 int ttm_mem_init_kernel_zone (struct ttm_mem_global*,int) ;
 int ttm_page_alloc_init (struct ttm_mem_global*,int) ;
 int ttm_shrink_work ;
 scalar_t__ unlikely (int) ;

int ttm_mem_global_init(struct ttm_mem_global *glob)
{
 u_int64_t mem;
 int ret;
 int i;
 struct ttm_mem_zone *zone;

 mtx_init(&glob->lock, "ttmgz", ((void*)0), MTX_DEF);
 glob->swap_queue = taskqueue_create("ttm_swap", M_WAITOK,
     taskqueue_thread_enqueue, &glob->swap_queue);
 taskqueue_start_threads(&glob->swap_queue, 1, PVM, "ttm swap");
 TASK_INIT(&glob->work, 0, ttm_shrink_work, glob);

 refcount_init(&glob->kobj_ref, 1);

 mem = physmem * PAGE_SIZE;

 ret = ttm_mem_init_kernel_zone(glob, mem);
 if (unlikely(ret != 0))
  goto out_no_zone;
 ret = ttm_mem_init_dma32_zone(glob, mem);
 if (unlikely(ret != 0))
  goto out_no_zone;
 for (i = 0; i < glob->num_zones; ++i) {
  zone = glob->zones[i];
  printf("[TTM] Zone %7s: Available graphics memory: %llu kiB\n",
   zone->name, (unsigned long long)zone->max_mem >> 10);
 }
 ttm_page_alloc_init(glob, glob->zone_kernel->max_mem/(2*PAGE_SIZE));
 ttm_dma_page_alloc_init(glob, glob->zone_kernel->max_mem/(2*PAGE_SIZE));
 return 0;
out_no_zone:
 ttm_mem_global_release(glob);
 return ret;
}
