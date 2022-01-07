
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_minor {int type; int index; TYPE_1__* device; int * buf_sigio; int master_list; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {struct drm_minor* si_drv1; } ;


 int DRM_DEBUG (char*,...) ;
 int DRM_DEV_GID ;
 int DRM_DEV_MODE ;
 int DRM_DEV_UID ;
 int DRM_ERROR (char*,int) ;
 int DRM_MEM_MINOR ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int MAKEDEV_CHECKNAME ;
 int MAKEDEV_WAITOK ;
 int M_NOWAIT ;
 int M_ZERO ;
 int drm_cdevsw ;
 int drm_minor_get_id (struct drm_device*,int) ;
 int free (struct drm_minor*,int ) ;
 int make_dev_p (int,TYPE_1__**,int *,int ,int ,int ,int ,char const*,int) ;
 struct drm_minor* malloc (int,int ,int) ;

int drm_get_minor(struct drm_device *dev, struct drm_minor **minor, int type)
{
 struct drm_minor *new_minor;
 int ret;
 int minor_id;
 const char *minor_devname;

 DRM_DEBUG("\n");

 minor_id = drm_minor_get_id(dev, type);
 if (minor_id < 0)
  return minor_id;

 new_minor = malloc(sizeof(struct drm_minor), DRM_MEM_MINOR,
     M_NOWAIT | M_ZERO);
 if (!new_minor) {
  ret = -ENOMEM;
  goto err_idr;
 }

 new_minor->type = type;
 new_minor->dev = dev;
 new_minor->index = minor_id;
 INIT_LIST_HEAD(&new_minor->master_list);

 new_minor->buf_sigio = ((void*)0);

 switch (type) {
 case 129:
  minor_devname = "dri/controlD%d";
  break;
 case 128:
  minor_devname = "dri/renderD%d";
  break;
 default:
  minor_devname = "dri/card%d";
  break;
 }

 ret = make_dev_p(MAKEDEV_WAITOK | MAKEDEV_CHECKNAME, &new_minor->device,
     &drm_cdevsw, 0, DRM_DEV_UID, DRM_DEV_GID,
     DRM_DEV_MODE, minor_devname, minor_id);
 if (ret) {
  DRM_ERROR("Failed to create cdev: %d\n", ret);
  goto err_mem;
 }
 new_minor->device->si_drv1 = new_minor;
 *minor = new_minor;

 DRM_DEBUG("new minor assigned %d\n", minor_id);
 return 0;


err_mem:
 free(new_minor, DRM_MEM_MINOR);
err_idr:
 *minor = ((void*)0);
 return ret;
}
