
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int DRM_DEBUG (char*) ;

int drm_noop(struct drm_device *dev, void *data,
      struct drm_file *file_priv)
{
 DRM_DEBUG("\n");
 return 0;
}
