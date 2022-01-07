
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_local_map {scalar_t__ handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {scalar_t__ max_context; struct drm_local_map** context_sareas; } ;
struct drm_ctx_priv_map {unsigned int ctx_id; void* handle; } ;


 int DRM_LOCK (struct drm_device*) ;
 int DRM_UNLOCK (struct drm_device*) ;
 int EINVAL ;

int drm_getsareactx(struct drm_device *dev, void *data,
      struct drm_file *file_priv)
{
 struct drm_ctx_priv_map *request = data;
 struct drm_local_map *map;

 DRM_LOCK(dev);
 if (dev->max_context < 0 ||
     request->ctx_id >= (unsigned) dev->max_context) {
  DRM_UNLOCK(dev);
  return EINVAL;
 }

 map = dev->context_sareas[request->ctx_id];
 DRM_UNLOCK(dev);

 request->handle = (void *)map->handle;

 return 0;
}
