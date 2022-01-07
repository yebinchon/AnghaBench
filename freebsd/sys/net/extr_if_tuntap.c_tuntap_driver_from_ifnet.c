
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int d_name; } ;
struct tuntap_driver {TYPE_1__ cdevsw; } ;
struct ifnet {int if_dname; } ;


 int nitems (struct tuntap_driver*) ;
 scalar_t__ strcmp (int ,int ) ;
 struct tuntap_driver* tuntap_drivers ;

__attribute__((used)) static struct tuntap_driver *
tuntap_driver_from_ifnet(const struct ifnet *ifp)
{
 struct tuntap_driver *drv;
 int i;

 if (ifp == ((void*)0))
  return (((void*)0));

 for (i = 0; i < nitems(tuntap_drivers); ++i) {
  drv = &tuntap_drivers[i];
  if (strcmp(ifp->if_dname, drv->cdevsw.d_name) == 0)
   return (drv);
 }

 return (((void*)0));
}
