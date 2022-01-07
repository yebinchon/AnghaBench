
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct drm_file* file_priv; TYPE_1__* hw_lock; } ;
struct drm_master {TYPE_2__ lock; } ;
struct drm_file {scalar_t__ lock_count; struct drm_master* master; } ;
struct drm_device {int dummy; } ;
struct TYPE_3__ {int lock; } ;


 scalar_t__ _DRM_LOCK_IS_HELD (int ) ;

int drm_i_have_hw_lock(struct drm_device *dev, struct drm_file *file_priv)
{
 struct drm_master *master = file_priv->master;
 return (file_priv->lock_count && master->lock.hw_lock &&
  _DRM_LOCK_IS_HELD(master->lock.hw_lock->lock) &&
  master->lock.file_priv == file_priv);
}
