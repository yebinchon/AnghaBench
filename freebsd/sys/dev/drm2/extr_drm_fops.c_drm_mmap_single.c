
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_size_t ;
typedef int vm_ooffset_t ;
struct vm_object {int dummy; } ;
struct drm_device {TYPE_1__* driver; int * drm_ttm_bdev; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {int driver_features; } ;


 int DRIVER_GEM ;
 int ENODEV ;
 int drm_gem_mmap_single (struct drm_device*,int *,int ,struct vm_object**,int) ;
 struct drm_device* drm_get_device_from_kdev (struct cdev*) ;
 int ttm_bo_mmap_single (int *,int *,int ,struct vm_object**,int) ;

int
drm_mmap_single(struct cdev *kdev, vm_ooffset_t *offset, vm_size_t size,
    struct vm_object **obj_res, int nprot)
{
 struct drm_device *dev;

 dev = drm_get_device_from_kdev(kdev);
 if (dev->drm_ttm_bdev != ((void*)0)) {
  return (-ttm_bo_mmap_single(dev->drm_ttm_bdev, offset, size,
      obj_res, nprot));
 } else if ((dev->driver->driver_features & DRIVER_GEM) != 0) {
  return (-drm_gem_mmap_single(dev, offset, size, obj_res, nprot));
 } else {
  return (ENODEV);
 }
}
