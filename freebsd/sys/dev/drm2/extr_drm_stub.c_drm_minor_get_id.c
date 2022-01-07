
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dev; } ;


 int DRM_MINOR_CONTROL ;
 int DRM_MINOR_RENDER ;
 int EINVAL ;
 int device_get_unit (int ) ;

__attribute__((used)) static int drm_minor_get_id(struct drm_device *dev, int type)
{
 int new_id;

 new_id = device_get_unit(dev->dev);

 if (new_id >= 64)
  return -EINVAL;

 if (type == DRM_MINOR_CONTROL) {
  new_id += 64;
 } else if (type == DRM_MINOR_RENDER) {
  new_id += 128;
 }

 return new_id;
}
