
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_2__ {int ocd_data; } ;


 int ENXIO ;
 int compat_data ;
 int device_set_desc (int ,char*) ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;

__attribute__((used)) static int
dme_probe(device_t dev)
{
 if (!ofw_bus_search_compatible(dev, compat_data)->ocd_data)
  return (ENXIO);
 device_set_desc(dev, "Davicom DM9000");
 return (0);
}
