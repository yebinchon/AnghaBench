
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * mm_node; } ;
struct ttm_buffer_object {size_t acc_size; int (* destroy ) (struct ttm_buffer_object*) ;TYPE_2__* glob; scalar_t__ ttm; int ddestroy; int lru; TYPE_1__ mem; int * sync_obj; int cpu_writers; int kref; int list_kref; struct ttm_bo_device* bdev; } ;
struct ttm_bo_device {TYPE_3__* glob; } ;
struct TYPE_6__ {int mem_glob; } ;
struct TYPE_5__ {int bo_count; } ;


 int MPASS (int) ;
 int M_TTM_BO ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int free (struct ttm_buffer_object*,int ) ;
 int list_empty (int *) ;
 int stub1 (struct ttm_buffer_object*) ;
 int ttm_mem_global_free (int ,size_t) ;
 int ttm_tt_destroy (scalar_t__) ;

__attribute__((used)) static void ttm_bo_release_list(struct ttm_buffer_object *bo)
{
 struct ttm_bo_device *bdev = bo->bdev;
 size_t acc_size = bo->acc_size;

 MPASS(atomic_read(&bo->list_kref) == 0);
 MPASS(atomic_read(&bo->kref) == 0);
 MPASS(atomic_read(&bo->cpu_writers) == 0);
 MPASS(bo->sync_obj == ((void*)0));
 MPASS(bo->mem.mm_node == ((void*)0));
 MPASS(list_empty(&bo->lru));
 MPASS(list_empty(&bo->ddestroy));

 if (bo->ttm)
  ttm_tt_destroy(bo->ttm);
 atomic_dec(&bo->glob->bo_count);
 if (bo->destroy)
  bo->destroy(bo);
 else {
  free(bo, M_TTM_BO);
 }
 ttm_mem_global_free(bdev->glob->mem_glob, acc_size);
}
