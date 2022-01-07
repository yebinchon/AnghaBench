
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdev {int dummy; } ;
typedef int device_t ;


 int EINVAL ;
 int GID_WHEEL ;
 int UID_ROOT ;
 struct cdev* make_dev (int *,int ,int ,int ,int,char*) ;
 int xsd_dev_cdevsw ;

__attribute__((used)) static int
xsd_dev_attach(device_t dev)
{
 struct cdev *xsd_cdev;

 xsd_cdev = make_dev(&xsd_dev_cdevsw, 0, UID_ROOT, GID_WHEEL, 0400,
     "xen/xenstored");
 if (xsd_cdev == ((void*)0))
  return (EINVAL);

 return (0);
}
