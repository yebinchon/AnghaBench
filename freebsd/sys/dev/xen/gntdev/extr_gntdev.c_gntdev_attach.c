
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int GID_WHEEL ;
 int MAKEDEV_ETERNAL ;
 int UID_ROOT ;
 int gntdev_devsw ;
 int make_dev_credf (int ,int *,int ,int *,int ,int ,int,char*) ;

__attribute__((used)) static int
gntdev_attach(device_t dev)
{

 make_dev_credf(MAKEDEV_ETERNAL, &gntdev_devsw, 0, ((void*)0), UID_ROOT,
     GID_WHEEL, 0600, "xen/gntdev");
 return (0);
}
