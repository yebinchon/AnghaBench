
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* d_name; } ;
struct tuntap_driver {TYPE_1__ cdevsw; int clones; int unrhdr; } ;
struct if_clone {int dummy; } ;
struct cdev {int dummy; } ;
typedef int caddr_t ;


 int EEXIST ;
 int ENXIO ;
 int IFNAMSIZ ;
 int alloc_unr (int ) ;
 int alloc_unr_specific (int ,int) ;
 int clone_create (int *,TYPE_1__*,int*,struct cdev**,int ) ;
 int snprintf (char*,int ,char*,char*,int) ;
 int tun_create_device (struct tuntap_driver*,int,int *,struct cdev**,char*) ;
 int tuncreate (struct cdev*) ;
 struct tuntap_driver* tuntap_driver_from_flags (int) ;
 int tuntap_name2info (char*,int*,int*) ;

__attribute__((used)) static int
tun_clone_create(struct if_clone *ifc, char *name, size_t len, caddr_t params)
{
 struct tuntap_driver *drv;
 struct cdev *dev;
 int err, i, tunflags, unit;

 tunflags = 0;

 err = tuntap_name2info(name, &unit, &tunflags);
 if (err != 0)
  return (err);

 drv = tuntap_driver_from_flags(tunflags);
 if (drv == ((void*)0))
  return (ENXIO);

 if (unit != -1) {

  if (alloc_unr_specific(drv->unrhdr, unit) == -1)
   return (EEXIST);
 } else {
  unit = alloc_unr(drv->unrhdr);
 }

 snprintf(name, IFNAMSIZ, "%s%d", drv->cdevsw.d_name, unit);


 dev = ((void*)0);
 i = clone_create(&drv->clones, &drv->cdevsw, &unit, &dev, 0);

 if (i != 0)
  i = tun_create_device(drv, unit, ((void*)0), &dev, name);
 if (i == 0)
  tuncreate(dev);

 return (i);
}
