
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_size_t ;
typedef int vm_ooffset_t ;
struct vm_object {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_device {TYPE_1__* driver; } ;
struct TYPE_4__ {int td_ucred; } ;
struct TYPE_3__ {int gem_pager_ops; } ;


 int DRM_GEM_MAPPING_MAPOFF (int ) ;
 int DRM_LOCK (struct drm_device*) ;
 int DRM_UNLOCK (struct drm_device*) ;
 int EINVAL ;
 int ENODEV ;
 int OBJT_MGTDEVICE ;
 struct vm_object* cdev_pager_allocate (struct drm_gem_object*,int ,int ,int ,int,int ,int ) ;
 TYPE_2__* curthread ;
 struct drm_gem_object* drm_gem_object_from_offset (struct drm_device*,int ) ;
 int drm_gem_object_reference (struct drm_gem_object*) ;
 int drm_gem_object_unreference_unlocked (struct drm_gem_object*) ;

int
drm_gem_mmap_single(struct drm_device *dev, vm_ooffset_t *offset, vm_size_t size,
    struct vm_object **obj_res, int nprot)
{
 struct drm_gem_object *gem_obj;
 struct vm_object *vm_obj;

 DRM_LOCK(dev);
 gem_obj = drm_gem_object_from_offset(dev, *offset);
 if (gem_obj == ((void*)0)) {
  DRM_UNLOCK(dev);
  return (-ENODEV);
 }
 drm_gem_object_reference(gem_obj);
 DRM_UNLOCK(dev);
 vm_obj = cdev_pager_allocate(gem_obj, OBJT_MGTDEVICE,
     dev->driver->gem_pager_ops, size, nprot,
     DRM_GEM_MAPPING_MAPOFF(*offset), curthread->td_ucred);
 if (vm_obj == ((void*)0)) {
  drm_gem_object_unreference_unlocked(gem_obj);
  return (-EINVAL);
 }
 *offset = DRM_GEM_MAPPING_MAPOFF(*offset);
 *obj_res = vm_obj;
 return (0);
}
