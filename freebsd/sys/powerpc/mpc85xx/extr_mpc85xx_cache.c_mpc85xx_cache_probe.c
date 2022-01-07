
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_2__ {int * ocd_str; } ;


 int ENXIO ;
 int compats ;
 int device_set_desc (int ,char*) ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;

__attribute__((used)) static int
mpc85xx_cache_probe(device_t dev)
{

 if (ofw_bus_search_compatible(dev, compats)->ocd_str == ((void*)0))
  return (ENXIO);

 device_set_desc(dev, "MPC85xx L2 cache");
 return (0);
}
