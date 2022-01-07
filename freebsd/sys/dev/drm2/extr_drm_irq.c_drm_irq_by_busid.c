
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_irq_busid {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {TYPE_2__* driver; } ;
struct TYPE_4__ {TYPE_1__* bus; } ;
struct TYPE_3__ {int (* irq_by_busid ) (struct drm_device*,struct drm_irq_busid*) ;} ;


 int DRIVER_HAVE_IRQ ;
 int EINVAL ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 int stub1 (struct drm_device*,struct drm_irq_busid*) ;

int drm_irq_by_busid(struct drm_device *dev, void *data,
       struct drm_file *file_priv)
{
 struct drm_irq_busid *p = data;

 if (!dev->driver->bus->irq_by_busid)
  return -EINVAL;

 if (!drm_core_check_feature(dev, DRIVER_HAVE_IRQ))
  return -EINVAL;

 return dev->driver->bus->irq_by_busid(dev, p);
}
