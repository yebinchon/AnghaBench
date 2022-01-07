
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_plane {int head; int base; int format_types; struct drm_device* dev; } ;
struct TYPE_2__ {int mutex; int num_plane; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int DRM_MEM_KMS ;
 int drm_mode_object_put (struct drm_device*,int *) ;
 int free (int ,int ) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

void drm_plane_cleanup(struct drm_plane *plane)
{
 struct drm_device *dev = plane->dev;

 sx_xlock(&dev->mode_config.mutex);
 free(plane->format_types, DRM_MEM_KMS);
 drm_mode_object_put(dev, &plane->base);

 if (!list_empty(&plane->head)) {
  list_del(&plane->head);
  dev->mode_config.num_plane--;
 }
 sx_xunlock(&dev->mode_config.mutex);
}
