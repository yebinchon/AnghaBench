
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_ooffset_t ;
struct vm_object {int dummy; } ;
struct ttm_buffer_object {TYPE_1__* bdev; int kref; } ;
struct ttm_bo_driver {int (* verify_access ) (struct ttm_buffer_object*) ;} ;
struct ttm_bo_device {int vm_lock; } ;
struct TYPE_4__ {int td_ucred; } ;
struct TYPE_3__ {struct ttm_bo_driver* driver; } ;


 int EINVAL ;
 int EPERM ;
 int OBJT_MGTDEVICE ;
 int OFF_TO_IDX (scalar_t__) ;
 struct vm_object* cdev_pager_allocate (struct ttm_buffer_object*,int ,int *,scalar_t__,int,int ,int ) ;
 TYPE_2__* curthread ;
 scalar_t__ likely (int ) ;
 int printf (char*) ;
 int refcount_acquire (int *) ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 int stub1 (struct ttm_buffer_object*) ;
 int ttm_bo_unref (struct ttm_buffer_object**) ;
 struct ttm_buffer_object* ttm_bo_vm_lookup_rb (struct ttm_bo_device*,int ,int ) ;
 int ttm_pager_ops ;
 scalar_t__ unlikely (int) ;

int
ttm_bo_mmap_single(struct ttm_bo_device *bdev, vm_ooffset_t *offset, vm_size_t size,
    struct vm_object **obj_res, int nprot)
{
 struct ttm_bo_driver *driver;
 struct ttm_buffer_object *bo;
 struct vm_object *vm_obj;
 int ret;

 rw_wlock(&bdev->vm_lock);
 bo = ttm_bo_vm_lookup_rb(bdev, OFF_TO_IDX(*offset), OFF_TO_IDX(size));
 if (likely(bo != ((void*)0)))
  refcount_acquire(&bo->kref);
 rw_wunlock(&bdev->vm_lock);

 if (unlikely(bo == ((void*)0))) {
  printf("[TTM] Could not find buffer object to map\n");
  return (-EINVAL);
 }

 driver = bo->bdev->driver;
 if (unlikely(!driver->verify_access)) {
  ret = -EPERM;
  goto out_unref;
 }
 ret = driver->verify_access(bo);
 if (unlikely(ret != 0))
  goto out_unref;

 vm_obj = cdev_pager_allocate(bo, OBJT_MGTDEVICE, &ttm_pager_ops,
     size, nprot, 0, curthread->td_ucred);
 if (vm_obj == ((void*)0)) {
  ret = -EINVAL;
  goto out_unref;
 }



 *offset = 0;
 *obj_res = vm_obj;
 return 0;
out_unref:
 ttm_bo_unref(&bo);
 return ret;
}
