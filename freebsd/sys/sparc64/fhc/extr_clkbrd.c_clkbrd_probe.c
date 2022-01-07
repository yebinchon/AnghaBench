
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int device_set_desc (int ,char*) ;
 int ofw_bus_get_name (int ) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int
clkbrd_probe(device_t dev)
{

 if (strcmp(ofw_bus_get_name(dev), "clock-board") == 0) {
  device_set_desc(dev, "Clock Board");
  return (0);
 }
 return (ENXIO);
}
