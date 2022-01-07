
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int device_t ;


 int BUS_PROBE_VENDOR ;
 int ENXIO ;
 int device_set_desc (int ,char*) ;
 int iicbus_get_addr (int ) ;
 scalar_t__ init_device (int ,int) ;

__attribute__((used)) static int
isl_probe(device_t dev)
{
 uint32_t addr = iicbus_get_addr(dev);

 if (addr != 0x88)
  return (ENXIO);
 if (init_device(dev, 1) != 0)
  return (ENXIO);
 device_set_desc(dev, "ISL Digital Ambient Light Sensor");
 return (BUS_PROBE_VENDOR);
}
