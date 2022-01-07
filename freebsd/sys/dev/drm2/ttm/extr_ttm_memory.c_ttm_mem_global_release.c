
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_mem_zone {int kobj_ref; } ;
struct ttm_mem_global {unsigned int num_zones; int kobj_ref; struct ttm_mem_zone** zones; int * swap_queue; int work; } ;


 scalar_t__ refcount_release (int *) ;
 int taskqueue_drain (int *,int *) ;
 int taskqueue_free (int *) ;
 int ttm_dma_page_alloc_fini () ;
 int ttm_mem_global_kobj_release (struct ttm_mem_global*) ;
 int ttm_mem_zone_kobj_release (struct ttm_mem_zone*) ;
 int ttm_page_alloc_fini () ;

void ttm_mem_global_release(struct ttm_mem_global *glob)
{
 unsigned int i;
 struct ttm_mem_zone *zone;


 ttm_page_alloc_fini();
 ttm_dma_page_alloc_fini();

 taskqueue_drain(glob->swap_queue, &glob->work);
 taskqueue_free(glob->swap_queue);
 glob->swap_queue = ((void*)0);
 for (i = 0; i < glob->num_zones; ++i) {
  zone = glob->zones[i];
  if (refcount_release(&zone->kobj_ref))
   ttm_mem_zone_kobj_release(zone);
 }
 if (refcount_release(&glob->kobj_ref))
  ttm_mem_global_kobj_release(glob);
}
