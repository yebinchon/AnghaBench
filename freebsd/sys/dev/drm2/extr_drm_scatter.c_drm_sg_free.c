
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_sg_mem {scalar_t__ vaddr; } ;
struct drm_scatter_gather {scalar_t__ handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct drm_sg_mem* sg; } ;


 int DRIVER_SG ;
 int DRM_DEBUG (char*,scalar_t__) ;
 int EINVAL ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 int drm_sg_cleanup (struct drm_sg_mem*) ;

int drm_sg_free(struct drm_device *dev, void *data,
  struct drm_file *file_priv)
{
 struct drm_scatter_gather *request = data;
 struct drm_sg_mem *entry;

 if (!drm_core_check_feature(dev, DRIVER_SG))
  return -EINVAL;

 entry = dev->sg;
 dev->sg = ((void*)0);

 if (!entry || entry->vaddr != request->handle)
  return -EINVAL;

 DRM_DEBUG("free 0x%zx\n", entry->vaddr);

 drm_sg_cleanup(entry);

 return 0;
}
