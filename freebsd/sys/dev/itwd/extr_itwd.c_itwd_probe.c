
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ SUPERIO_DEV_WDT ;
 scalar_t__ SUPERIO_VENDOR_ITE ;
 int device_set_desc (int ,char*) ;
 scalar_t__ superio_get_type (int ) ;
 scalar_t__ superio_vendor (int ) ;

__attribute__((used)) static int
itwd_probe(device_t dev)
{

 if (superio_vendor(dev) != SUPERIO_VENDOR_ITE)
  return (ENXIO);
 if (superio_get_type(dev) != SUPERIO_DEV_WDT)
  return (ENXIO);
 device_set_desc(dev, "Watchdog Timer on ITE SuperIO");
 return (BUS_PROBE_DEFAULT);
}
