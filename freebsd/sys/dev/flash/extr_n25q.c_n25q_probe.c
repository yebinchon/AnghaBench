
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_5__ {int name; } ;
struct TYPE_4__ {int ocd_data; } ;


 int ENXIO ;
 int compat_data ;
 int device_set_desc (int ,char*) ;
 TYPE_2__* flash_devices ;
 int nitems (TYPE_2__*) ;
 scalar_t__ ofw_bus_is_compatible (int ,int ) ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
n25q_probe(device_t dev)
{
 int i;

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);


 if (ofw_bus_search_compatible(dev, compat_data)->ocd_data == 1)
  goto found;





 for (i = 0; i < nitems(flash_devices); i++)
  if (ofw_bus_is_compatible(dev, flash_devices[i].name))
   goto found;

 return (ENXIO);
found:
 device_set_desc(dev, "Micron n25q");

 return (0);
}
