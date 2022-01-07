
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_2__ {scalar_t__ ocd_data; } ;


 int ENXIO ;
 int device_set_desc (int ,char*) ;
 int gpio_matches ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;

__attribute__((used)) static int
qoriq_gpio_probe(device_t dev)
{

 if (ofw_bus_search_compatible(dev, gpio_matches)->ocd_data == 0)
  return (ENXIO);

 device_set_desc(dev, "Freescale QorIQ GPIO driver");

 return (0);
}
