
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ S390_ADDR ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,scalar_t__,scalar_t__) ;
 int device_set_desc (int ,char*) ;
 scalar_t__ iicbus_get_addr (int ) ;
 int ofw_bus_is_compatible (int ,char*) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
s390rtc_probe(device_t dev)
{
 if (iicbus_get_addr(dev) != S390_ADDR) {
  if (bootverbose)
   device_printf(dev, "slave address mismatch. "
       "(%02x != %02x)\n", iicbus_get_addr(dev),
       S390_ADDR);
  return (ENXIO);
 }

 device_set_desc(dev, "Seiko Instruments S-35390A RTC");

 return (BUS_PROBE_DEFAULT);
}
