
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {int irq_enabled; int num_crtcs; TYPE_2__* driver; int irqh; int irqr; int dev; int vbl_lock; int * last_vblank; scalar_t__* vblank_enabled; int * _vblank_count; } ;
struct TYPE_4__ {TYPE_1__* bus; int (* irq_uninstall ) (struct drm_device*) ;int (* get_vblank_counter ) (struct drm_device*,int) ;} ;
struct TYPE_3__ {int (* free_irq ) (struct drm_device*) ;} ;


 int DRIVER_HAVE_IRQ ;
 int DRM_DEBUG (char*,int ) ;
 int DRM_LOCK (struct drm_device*) ;
 int DRM_UNLOCK (struct drm_device*) ;
 int DRM_WAKEUP (int *) ;
 int EINVAL ;
 int bus_teardown_intr (int ,int ,int ) ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 int drm_dev_to_irq (struct drm_device*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (struct drm_device*,int) ;
 int stub2 (struct drm_device*) ;
 int stub3 (struct drm_device*) ;

int drm_irq_uninstall(struct drm_device *dev)
{
 int irq_enabled, i;

 if (!drm_core_check_feature(dev, DRIVER_HAVE_IRQ))
  return -EINVAL;

 DRM_LOCK(dev);
 irq_enabled = dev->irq_enabled;
 dev->irq_enabled = 0;
 DRM_UNLOCK(dev);




 if (dev->num_crtcs) {
  mtx_lock(&dev->vbl_lock);
  for (i = 0; i < dev->num_crtcs; i++) {
   DRM_WAKEUP(&dev->_vblank_count[i]);
   dev->vblank_enabled[i] = 0;
   dev->last_vblank[i] =
    dev->driver->get_vblank_counter(dev, i);
  }
  mtx_unlock(&dev->vbl_lock);
 }

 if (!irq_enabled)
  return -EINVAL;

 DRM_DEBUG("irq=%d\n", drm_dev_to_irq(dev));

 if (dev->driver->irq_uninstall)
  dev->driver->irq_uninstall(dev);

 bus_teardown_intr(dev->dev, dev->irqr, dev->irqh);
 dev->driver->bus->free_irq(dev);

 return 0;
}
