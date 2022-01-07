
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* sc_p ;
typedef int * device_t ;
typedef int devclass_t ;
struct TYPE_3__ {int * dev; } ;


 scalar_t__ LOGICALID_PCM ;
 int * devclass_get_device (int ,int) ;
 int devclass_get_maxunit (int ) ;
 int device_get_devclass (int *) ;
 scalar_t__ isa_get_logicalid (int *) ;
 scalar_t__ isa_get_serial (int *) ;
 scalar_t__ isa_get_vendorid (int *) ;

__attribute__((used)) static device_t
find_masterdev(sc_p scp)
{
 int i, units;
 devclass_t devclass;
 device_t dev;

 devclass = device_get_devclass(scp->dev);
 units = devclass_get_maxunit(devclass);
 dev = ((void*)0);
 for (i = 0 ; i < units ; i++) {
  dev = devclass_get_device(devclass, i);
  if (isa_get_vendorid(dev) == isa_get_vendorid(scp->dev)
      && isa_get_logicalid(dev) == LOGICALID_PCM
      && isa_get_serial(dev) == isa_get_serial(scp->dev))
   break;
 }
 if (i == units)
  return (((void*)0));

 return (dev);
}
