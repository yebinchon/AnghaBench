
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_unique {int unique_len; } ;
struct drm_master {scalar_t__ unique; scalar_t__ unique_len; } ;
struct drm_file {struct drm_master* master; } ;
struct drm_device {TYPE_2__* driver; } ;
struct TYPE_4__ {TYPE_1__* bus; } ;
struct TYPE_3__ {int (* set_unique ) (struct drm_device*,struct drm_master*,struct drm_unique*) ;} ;


 int EBUSY ;
 int EINVAL ;
 int drm_unset_busid (struct drm_device*,struct drm_master*) ;
 int stub1 (struct drm_device*,struct drm_master*,struct drm_unique*) ;

int drm_setunique(struct drm_device *dev, void *data,
    struct drm_file *file_priv)
{
 struct drm_unique *u = data;
 struct drm_master *master = file_priv->master;
 int ret;

 if (master->unique_len || master->unique)
  return -EBUSY;

 if (!u->unique_len || u->unique_len > 1024)
  return -EINVAL;

 if (!dev->driver->bus->set_unique)
  return -EINVAL;

 ret = dev->driver->bus->set_unique(dev, master, u);
 if (ret)
  goto err;

 return 0;

err:
 drm_unset_busid(dev, master);
 return ret;
}
