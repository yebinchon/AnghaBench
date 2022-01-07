
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_2__ {uintptr_t ocd_data; } ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 uintptr_t FECFLAG_GBE ;
 uintptr_t FECTYPE_NONE ;
 int compat_data ;
 int device_set_desc (int ,char*) ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
ffec_probe(device_t dev)
{
 uintptr_t fectype;

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);

 fectype = ofw_bus_search_compatible(dev, compat_data)->ocd_data;
 if (fectype == FECTYPE_NONE)
  return (ENXIO);

 device_set_desc(dev, (fectype & FECFLAG_GBE) ?
     "Freescale Gigabit Ethernet Controller" :
     "Freescale Fast Ethernet Controller");

 return (BUS_PROBE_DEFAULT);
}
