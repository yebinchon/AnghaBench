
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_file {TYPE_2__* master; } ;
struct drm_device {int dummy; } ;
struct TYPE_6__ {TYPE_1__* hw_lock; } ;
struct TYPE_5__ {TYPE_3__ lock; } ;
struct TYPE_4__ {int lock; } ;


 int DRM_DEBUG (char*,struct drm_file*,int ) ;
 int _DRM_LOCKING_CONTEXT (int ) ;
 scalar_t__ drm_i_have_hw_lock (struct drm_device*,struct drm_file*) ;
 int drm_lock_free (TYPE_3__*,int ) ;

__attribute__((used)) static void drm_master_release(struct drm_device *dev, struct drm_file *file_priv)
{

 if (drm_i_have_hw_lock(dev, file_priv)) {
  DRM_DEBUG("File %p released, freeing lock for context %d\n",
     file_priv, _DRM_LOCKING_CONTEXT(file_priv->master->lock.hw_lock->lock));
  drm_lock_free(&file_priv->master->lock,
         _DRM_LOCKING_CONTEXT(file_priv->master->lock.hw_lock->lock));
 }
}
