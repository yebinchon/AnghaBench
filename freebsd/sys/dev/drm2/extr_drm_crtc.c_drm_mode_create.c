
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int base; } ;
struct drm_device {int dummy; } ;


 int DRM_MEM_KMS ;
 int DRM_MODE_OBJECT_MODE ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ drm_mode_object_get (struct drm_device*,int *,int ) ;
 int free (struct drm_display_mode*,int ) ;
 struct drm_display_mode* malloc (int,int ,int) ;

struct drm_display_mode *drm_mode_create(struct drm_device *dev)
{
 struct drm_display_mode *nmode;

 nmode = malloc(sizeof(struct drm_display_mode), DRM_MEM_KMS,
     M_WAITOK | M_ZERO);
 if (!nmode)
  return ((void*)0);

 if (drm_mode_object_get(dev, &nmode->base, DRM_MODE_OBJECT_MODE)) {
  free(nmode, DRM_MEM_KMS);
  return ((void*)0);
 }

 return nmode;
}
