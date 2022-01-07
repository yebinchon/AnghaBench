
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct agp_i810_match {TYPE_1__* driver; } ;
typedef int * device_t ;
struct TYPE_2__ {int (* check_active ) (int *) ;int (* set_desc ) (int *,struct agp_i810_match const*) ;} ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int * agp_i810_find_bridge (int *) ;
 struct agp_i810_match* agp_i810_match (int *) ;
 scalar_t__ bootverbose ;
 int device_get_unit (int *) ;
 int printf (char*) ;
 scalar_t__ resource_disabled (char*,int ) ;
 int stub1 (int *) ;
 int stub2 (int *,struct agp_i810_match const*) ;

__attribute__((used)) static int
agp_i810_probe(device_t dev)
{
 device_t bdev;
 const struct agp_i810_match *match;
 int err;

 if (resource_disabled("agp", device_get_unit(dev)))
  return (ENXIO);
 match = agp_i810_match(dev);
 if (match == ((void*)0))
  return (ENXIO);

 bdev = agp_i810_find_bridge(dev);
 if (bdev == ((void*)0)) {
  if (bootverbose)
   printf("I810: can't find bridge device\n");
  return (ENXIO);
 }




 err = match->driver->check_active(bdev);
 if (err != 0) {
  if (bootverbose)
   printf("i810: disabled, not probing\n");
  return (err);
 }

 match->driver->set_desc(dev, match);
 return (BUS_PROBE_DEFAULT);
}
