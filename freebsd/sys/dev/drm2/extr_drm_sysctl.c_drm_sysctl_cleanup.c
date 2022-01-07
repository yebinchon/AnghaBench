
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {TYPE_1__* driver; TYPE_2__* sysctl; } ;
struct TYPE_4__ {int ctx; } ;
struct TYPE_3__ {int (* sysctl_cleanup ) (struct drm_device*) ;} ;


 int DRM_MEM_DRIVER ;
 int free (TYPE_2__*,int ) ;
 int stub1 (struct drm_device*) ;
 int sysctl_ctx_free (int *) ;

int drm_sysctl_cleanup(struct drm_device *dev)
{
 int error;

 if (dev->sysctl == ((void*)0))
  return (0);

 error = sysctl_ctx_free(&dev->sysctl->ctx);
 free(dev->sysctl, DRM_MEM_DRIVER);
 dev->sysctl = ((void*)0);
 if (dev->driver->sysctl_cleanup != ((void*)0))
  dev->driver->sysctl_cleanup(dev);

 return (-error);
}
