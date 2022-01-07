
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_get_cap {int value; int capability; } ;
struct drm_file {int dummy; } ;
struct TYPE_4__ {int preferred_depth; int prefer_shadow; } ;
struct drm_device {TYPE_2__ mode_config; TYPE_1__* driver; } ;
struct TYPE_3__ {int dumb_create; } ;
 int DRM_PRIME_CAP_EXPORT ;
 int DRM_PRIME_CAP_IMPORT ;
 int EINVAL ;
 int drm_timestamp_monotonic ;

int drm_getcap(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 struct drm_get_cap *req = data;

 req->value = 0;
 switch (req->capability) {
 case 133:
  if (dev->driver->dumb_create)
   req->value = 1;
  break;
 case 128:
  req->value = 1;
  break;
 case 132:
  req->value = dev->mode_config.preferred_depth;
  break;
 case 131:
  req->value = dev->mode_config.prefer_shadow;
  break;
 case 130:
  req->value |= 0 ? DRM_PRIME_CAP_IMPORT : 0;
  req->value |= 0 ? DRM_PRIME_CAP_EXPORT : 0;
  break;
 case 129:
  req->value = drm_timestamp_monotonic;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
