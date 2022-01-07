
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int device_get_name (int ) ;
 int device_get_unit (int ) ;
 scalar_t__ resource_int_value (int ,int ,char*,int*) ;

int
ar9340_probe(device_t dev)
{
 int is_9340 = 0;

 if (resource_int_value(device_get_name(dev), device_get_unit(dev),
     "is_9340", &is_9340) != 0)
  return (ENXIO);

 if (is_9340 == 0)
  return (ENXIO);

 return (0);
}
