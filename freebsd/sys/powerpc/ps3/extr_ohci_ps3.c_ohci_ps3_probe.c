
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_SPECIFIC ;
 int ENXIO ;
 scalar_t__ PS3_BUSTYPE_SYSBUS ;
 scalar_t__ PS3_DEVTYPE_USB ;
 int device_set_desc (int ,char*) ;
 scalar_t__ ps3bus_get_bustype (int ) ;
 scalar_t__ ps3bus_get_devtype (int ) ;

__attribute__((used)) static int
ohci_ps3_probe(device_t dev)
{
 if (ps3bus_get_bustype(dev) != PS3_BUSTYPE_SYSBUS ||
     ps3bus_get_devtype(dev) != PS3_DEVTYPE_USB)
  return (ENXIO);

 device_set_desc(dev, "Playstation 3 USB 2.0 controller");
 return (BUS_PROBE_SPECIFIC);
}
