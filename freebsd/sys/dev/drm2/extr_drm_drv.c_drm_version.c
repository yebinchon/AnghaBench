
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_version {int desc_len; int desc; int date_len; int date; int name_len; int name; int version_patchlevel; int version_minor; int version_major; } ;
struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* driver; } ;
struct TYPE_2__ {int desc; int date; int name; int patchlevel; int minor; int major; } ;


 int drm_copy_field (int ,int *,int ) ;

int drm_version(struct drm_device *dev, void *data,
         struct drm_file *file_priv)
{
 struct drm_version *version = data;
 int err;

 version->version_major = dev->driver->major;
 version->version_minor = dev->driver->minor;
 version->version_patchlevel = dev->driver->patchlevel;
 err = drm_copy_field(version->name, &version->name_len,
   dev->driver->name);
 if (!err)
  err = drm_copy_field(version->date, &version->date_len,
    dev->driver->date);
 if (!err)
  err = drm_copy_field(version->desc, &version->desc_len,
    dev->driver->desc);

 return err;
}
