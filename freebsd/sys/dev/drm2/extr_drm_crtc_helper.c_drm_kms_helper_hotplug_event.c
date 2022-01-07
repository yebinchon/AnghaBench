
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* funcs; } ;
struct drm_device {TYPE_2__ mode_config; } ;
struct TYPE_3__ {int (* output_poll_changed ) (struct drm_device*) ;} ;


 int drm_sysfs_hotplug_event (struct drm_device*) ;
 int stub1 (struct drm_device*) ;

void drm_kms_helper_hotplug_event(struct drm_device *dev)
{




 if (dev->mode_config.funcs->output_poll_changed)
  dev->mode_config.funcs->output_poll_changed(dev);
}
