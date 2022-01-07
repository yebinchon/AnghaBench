
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 scalar_t__ bus_width_1 ;
 scalar_t__ bus_width_4 ;
 scalar_t__ mmc_get_bus_width (int ) ;

__attribute__((used)) static int
mmcsd_bus_bit_width(device_t dev)
{

 if (mmc_get_bus_width(dev) == bus_width_1)
  return (1);
 if (mmc_get_bus_width(dev) == bus_width_4)
  return (4);
 return (8);
}
