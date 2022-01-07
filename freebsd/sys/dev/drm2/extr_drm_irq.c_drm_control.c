
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int dummy; } ;
struct drm_device {int if_version; } ;
struct drm_control {int func; int irq; } ;


 int DRIVER_HAVE_IRQ ;
 int DRIVER_MODESET ;
 int DRM_IF_VERSION (int,int) ;


 int EINVAL ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 int drm_dev_to_irq (struct drm_device*) ;
 int drm_irq_install (struct drm_device*) ;
 int drm_irq_uninstall (struct drm_device*) ;

int drm_control(struct drm_device *dev, void *data,
  struct drm_file *file_priv)
{
 struct drm_control *ctl = data;






 switch (ctl->func) {
 case 129:
  if (!drm_core_check_feature(dev, DRIVER_HAVE_IRQ))
   return 0;
  if (drm_core_check_feature(dev, DRIVER_MODESET))
   return 0;
  if (dev->if_version < DRM_IF_VERSION(1, 2) &&
      ctl->irq != drm_dev_to_irq(dev))
   return -EINVAL;
  return drm_irq_install(dev);
 case 128:
  if (!drm_core_check_feature(dev, DRIVER_HAVE_IRQ))
   return 0;
  if (drm_core_check_feature(dev, DRIVER_MODESET))
   return 0;
  return drm_irq_uninstall(dev);
 default:
  return -EINVAL;
 }
}
