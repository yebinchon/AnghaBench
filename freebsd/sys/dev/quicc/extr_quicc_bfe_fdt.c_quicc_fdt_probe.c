
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef scalar_t__ pcell_t ;
typedef int device_t ;
typedef int clock ;


 int ENXIO ;
 scalar_t__ OF_getprop (int ,char*,scalar_t__*,int) ;
 int OF_parent (int ) ;
 int ofw_bus_get_node (int ) ;
 int ofw_bus_is_compatible (int ,char*) ;
 int ofw_bus_status_okay (int ) ;
 int quicc_bfe_probe (int ,uintptr_t) ;

__attribute__((used)) static int
quicc_fdt_probe(device_t dev)
{
 phandle_t par;
 pcell_t clock;

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);

 if (!ofw_bus_is_compatible(dev, "fsl,cpm2"))
  return (ENXIO);

 par = OF_parent(ofw_bus_get_node(dev));
 if (OF_getprop(par, "bus-frequency", &clock, sizeof(clock)) <= 0)
  clock = 0;

 return (quicc_bfe_probe(dev, (uintptr_t)clock));
}
