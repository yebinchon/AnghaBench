
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_set_version {int drm_di_major; int drm_di_minor; int drm_dd_major; scalar_t__ drm_dd_minor; } ;
struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* driver; int if_version; } ;
struct TYPE_2__ {int major; scalar_t__ minor; int (* set_version ) (struct drm_device*,struct drm_set_version*) ;} ;


 int DRM_IF_MAJOR ;
 int DRM_IF_MINOR ;
 int DRM_IF_VERSION (int,int) ;
 int EINVAL ;
 int drm_set_busid (struct drm_device*,struct drm_file*) ;
 int max (int,int ) ;
 int stub1 (struct drm_device*,struct drm_set_version*) ;

int drm_setversion(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 struct drm_set_version *sv = data;
 int if_version, retcode = 0;

 if (sv->drm_di_major != -1) {
  if (sv->drm_di_major != DRM_IF_MAJOR ||
      sv->drm_di_minor < 0 || sv->drm_di_minor > DRM_IF_MINOR) {
   retcode = -EINVAL;
   goto done;
  }
  if_version = DRM_IF_VERSION(sv->drm_di_major,
         sv->drm_di_minor);
  dev->if_version = max(if_version, dev->if_version);
  if (sv->drm_di_minor >= 1) {




   retcode = drm_set_busid(dev, file_priv);
   if (retcode)
    goto done;
  }
 }

 if (sv->drm_dd_major != -1) {
  if (sv->drm_dd_major != dev->driver->major ||
      sv->drm_dd_minor < 0 || sv->drm_dd_minor >
      dev->driver->minor) {
   retcode = -EINVAL;
   goto done;
  }

  if (dev->driver->set_version)
   dev->driver->set_version(dev, sv);
 }

done:
 sv->drm_di_major = DRM_IF_MAJOR;
 sv->drm_di_minor = DRM_IF_MINOR;
 sv->drm_dd_major = dev->driver->major;
 sv->drm_dd_minor = dev->driver->minor;

 return retcode;
}
