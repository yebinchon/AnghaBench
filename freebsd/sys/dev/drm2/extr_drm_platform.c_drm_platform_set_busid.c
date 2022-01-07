
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_master {int unique_len; int unique_size; int * unique; } ;
struct drm_device {TYPE_1__* driver; } ;
struct TYPE_2__ {char* name; } ;


 int DRM_ERROR (char*) ;
 int DRM_MEM_DRIVER ;
 int EINVAL ;
 int ENOMEM ;
 int M_NOWAIT ;
 int * malloc (int,int ,int ) ;
 int snprintf (int *,int,char*,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static int drm_platform_set_busid(struct drm_device *dev, struct drm_master *master)
{
 int len, ret, id;

 master->unique_len = 13 + strlen(dev->driver->name);
 master->unique_size = master->unique_len;
 master->unique = malloc(master->unique_len + 1, DRM_MEM_DRIVER, M_NOWAIT);

 if (master->unique == ((void*)0))
  return -ENOMEM;

 id = 0;




 if (id == -1)
  id = 0;

 len = snprintf(master->unique, master->unique_len,
   "platform:%s:%02d", dev->driver->name, id);

 if (len > master->unique_len) {
  DRM_ERROR("Unique buffer overflowed\n");
  ret = -EINVAL;
  goto err;
 }

 return 0;
err:
 return ret;
}
