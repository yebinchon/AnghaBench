
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_GENERIC ;
 int ENXIO ;
 int bootverbose ;
 scalar_t__ device_get_unit (int ) ;
 int device_quiet (int ) ;
 int device_set_desc (int ,char*) ;
 scalar_t__ resource_disabled (char*,int ) ;

__attribute__((used)) static int
coretemp_probe(device_t dev)
{
 if (resource_disabled("coretemp", 0))
  return (ENXIO);

 device_set_desc(dev, "CPU On-Die Thermal Sensors");

 if (!bootverbose && device_get_unit(dev) != 0)
  device_quiet(dev);

 return (BUS_PROBE_GENERIC);
}
