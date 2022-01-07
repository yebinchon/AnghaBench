
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_file {TYPE_3__* master; } ;
struct drm_device {int last_context; int context_wait; int context_flag; int last_switch; } ;
struct TYPE_5__ {TYPE_1__* hw_lock; } ;
struct TYPE_6__ {TYPE_2__ lock; } ;
struct TYPE_4__ {int lock; } ;


 int DRM_ERROR (char*) ;
 int _DRM_LOCK_IS_HELD (int ) ;
 int clear_bit (int ,int *) ;
 int jiffies ;
 int wakeup (int *) ;

__attribute__((used)) static int drm_context_switch_complete(struct drm_device *dev,
           struct drm_file *file_priv, int new)
{
 dev->last_context = new;
 dev->last_switch = jiffies;

 if (!_DRM_LOCK_IS_HELD(file_priv->master->lock.hw_lock->lock)) {
  DRM_ERROR("Lock isn't held after context switch\n");
 }




 clear_bit(0, &dev->context_flag);
 wakeup(&dev->context_wait);

 return 0;
}
