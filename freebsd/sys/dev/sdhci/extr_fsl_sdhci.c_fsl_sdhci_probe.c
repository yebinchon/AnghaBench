
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_2__ {int ocd_data; } ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;


 int compat_data ;
 int device_set_desc (int ,char*) ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
fsl_sdhci_probe(device_t dev)
{

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);

 switch (ofw_bus_search_compatible(dev, compat_data)->ocd_data) {
 case 129:
  device_set_desc(dev, "Freescale eSDHC controller");
  return (BUS_PROBE_DEFAULT);
 case 128:
  device_set_desc(dev, "Freescale uSDHC controller");
  return (BUS_PROBE_DEFAULT);
 default:
  break;
 }
 return (ENXIO);
}
