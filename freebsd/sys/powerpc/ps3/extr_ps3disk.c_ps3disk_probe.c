
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_SPECIFIC ;
 int ENXIO ;
 scalar_t__ PS3_BUSTYPE_STORAGE ;
 scalar_t__ PS3_DEVTYPE_DISK ;
 int device_set_desc (int ,char*) ;
 scalar_t__ ps3bus_get_bustype (int ) ;
 scalar_t__ ps3bus_get_devtype (int ) ;

__attribute__((used)) static int
ps3disk_probe(device_t dev)
{
 if (ps3bus_get_bustype(dev) != PS3_BUSTYPE_STORAGE ||
     ps3bus_get_devtype(dev) != PS3_DEVTYPE_DISK)
  return (ENXIO);

 device_set_desc(dev, "Playstation 3 Disk");

 return (BUS_PROBE_SPECIFIC);
}
