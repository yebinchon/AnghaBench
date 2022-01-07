
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdev {int dummy; } ;
typedef int device_t ;


 int EINVAL ;
 int GID_WHEEL ;
 int MAKEDEV_ETERNAL ;
 int UID_ROOT ;
 struct cdev* make_dev_credf (int ,int *,int ,int *,int ,int ,int,char*) ;
 int xs_dev_cdevsw ;

__attribute__((used)) static int
xs_dev_attach(device_t dev)
{
 struct cdev *xs_cdev;

 xs_cdev = make_dev_credf(MAKEDEV_ETERNAL, &xs_dev_cdevsw, 0, ((void*)0),
     UID_ROOT, GID_WHEEL, 0400, "xen/xenstore");
 if (xs_cdev == ((void*)0))
  return (EINVAL);

 return (0);
}
