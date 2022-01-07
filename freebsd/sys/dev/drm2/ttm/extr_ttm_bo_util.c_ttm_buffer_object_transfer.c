
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_buffer_object {scalar_t__ acc_size; int * destroy; int kref; int list_kref; int * sync_obj; int cpu_writers; int * vm_node; int io_reserve_lru; int swap; int lru; int ddestroy; struct ttm_bo_device* bdev; } ;
struct ttm_bo_driver {int * (* sync_obj_ref ) (int *) ;} ;
struct ttm_bo_device {int fence_lock; struct ttm_bo_driver* driver; } ;


 int INIT_LIST_HEAD (int *) ;
 int M_TTM_TRANSF_OBJ ;
 int M_WAITOK ;
 int atomic_set (int *,int ) ;
 struct ttm_buffer_object* malloc (int,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int refcount_init (int *,int) ;
 int * stub1 (int *) ;
 int ttm_transfered_destroy ;

__attribute__((used)) static int
ttm_buffer_object_transfer(struct ttm_buffer_object *bo,
    struct ttm_buffer_object **new_obj)
{
 struct ttm_buffer_object *fbo;
 struct ttm_bo_device *bdev = bo->bdev;
 struct ttm_bo_driver *driver = bdev->driver;

 fbo = malloc(sizeof(*fbo), M_TTM_TRANSF_OBJ, M_WAITOK);
 *fbo = *bo;






 INIT_LIST_HEAD(&fbo->ddestroy);
 INIT_LIST_HEAD(&fbo->lru);
 INIT_LIST_HEAD(&fbo->swap);
 INIT_LIST_HEAD(&fbo->io_reserve_lru);
 fbo->vm_node = ((void*)0);
 atomic_set(&fbo->cpu_writers, 0);

 mtx_lock(&bdev->fence_lock);
 if (bo->sync_obj)
  fbo->sync_obj = driver->sync_obj_ref(bo->sync_obj);
 else
  fbo->sync_obj = ((void*)0);
 mtx_unlock(&bdev->fence_lock);
 refcount_init(&fbo->list_kref, 1);
 refcount_init(&fbo->kref, 1);
 fbo->destroy = &ttm_transfered_destroy;
 fbo->acc_size = 0;

 *new_obj = fbo;
 return 0;
}
